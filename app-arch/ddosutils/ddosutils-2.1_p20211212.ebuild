EAPI=7

DESCRIPTION="Tools to read Dragon32 VDK disk image files"
HOMEPAGE="https://github.com/pulkomandy/ddosutils"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-main"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
	default
	mv makefile.gcc Makefile
}

src_install() {
	dobin bas2txt.exe
	dobin dcopy.exe
	dobin ddir.exe
	dobin drm2txt.exe
}
