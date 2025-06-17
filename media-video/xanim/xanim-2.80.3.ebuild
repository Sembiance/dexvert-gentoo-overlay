EAPI=8

DESCRIPTION="Supports viewing and playing various movie formats"
HOMEPAGE="http://xanim.polter.net/"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="x11-libs/libSM[abi_x86_32]
	x11-libs/libICE[abi_x86_32]
	x11-libs/libXext[abi_x86_32]
	virtual/jpeg[abi_x86_32]
	x11-libs/libXt[abi_x86_32]"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/xa_export.patch" )

src_prepare() {
    default
    sed -i 's/^CFLAGS\s*=\s/CFLAGS += /' Makefile
}

src_compile() {
	cd quicktime4linux
	emake
	cd ..
	emake ${PN}
}

src_install() {
	newman docs/${PN}.man xanim.1
	dobin ${PN}
}
