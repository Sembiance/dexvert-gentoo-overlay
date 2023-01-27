EAPI=7

inherit autotools

DESCRIPTION="Camoto suite support library for game graphics"
HOMEPAGE="https://github.com/Malvineous/libgamegraphics"
LICENSE="GPL-3"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-cpp/pngpp
	dev-libs/boost
	media-libs/libpng
	app-text/xmlto
	dev-libs/libgamecommon"
RDEPEND=${DEPEND}

src_prepare() {
	default
	eautoreconf
}
