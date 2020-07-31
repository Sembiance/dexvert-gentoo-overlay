EAPI=7

inherit eutils

DESCRIPTION="BPG (Better Portable Graphics) is a new image format"
HOMEPAGE="http://bellard.org/bpg/"
SRC_URI="http://bellard.org/bpg/${PN}-${PV}.tar.gz"
LICENSE="LGPL-2.1 BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="x265"

DEPEND="dev-lang/yasm
	dev-util/cmake"

RDEPEND="media-libs/libjpeg-turbo
	media-libs/libpng:0
	sys-process/numactl
	x265? ( media-libs/x265:= )"

PATCHES=(
	"${FILESDIR}"/${PN}-0.9.6-numa_linking.patch
	"${FILESDIR}"/${PN}-cxx98.patch
)

src_prepare() {
	default

	sed \
		-e '/^prefix=/s@/usr/local@/usr@' \
		-e "/^CFLAGS:=/s@-Os@${CFLAGS}@" \
		-e "/^LDFLAGS=/s@-g@${LDFLAGS}@" \
		-e '/install/s@$(prefix)@$(DESTDIR)/usr@' \
		-e '/install/s@-s@@' \
		-i Makefile || die

	if ! use x265 ; then
		sed \
			-e '/^USE_X265=/s@^@#@' \
			-i Makefile || die
	fi
}

src_install() {
	ewarn "D: ${D}"
	dodir /usr/bin
	default
}