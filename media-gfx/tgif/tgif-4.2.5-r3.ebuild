EAPI=8

inherit autotools flag-o-matic

DESCRIPTION="Xlib base 2-D drawing facility under X11"
HOMEPAGE="http://bourbon.usc.edu/tgif/index.html"
LICENSE="QPL-1.0"
MY_P="${PN}-QPL-${PV}"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_P}.tar.gz"
S="${WORKDIR}/${MY_P}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="
	media-fonts/redhat-classic-fonts
	sys-libs/zlib
	x11-libs/libICE
	x11-libs/libSM
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXmu
	x11-libs/libXt"
RDEPEND="
	${DEPEND}
	media-libs/netpbm"

PATCHES=(
	"${FILESDIR}/${P}-wformat-security.patch"
	"${FILESDIR}/${P}-implicit-int.patch"
)

src_prepare() {
	default

	sed -i \
		-e 's/^CFLAGS=/CFLAGS+=/' \
		-e 's:^TGIFDIR.*:TGIFDIR = $(datadir)/tgif:' \
		Makefile.am || die 'sed on Makefile.am failed'

	eautoreconf
}

src_configure() {
	# bug #881325
	append-cflags -std=gnu89
	append-cppflags -D_DONT_USE_MKTEMP -DHAS_STREAMS_SUPPORT

	default
}

src_install() {
	default

	mv tgif.man tgif.1
	doman tgif.1
}