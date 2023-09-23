EAPI=8

DESCRIPTION="CLI tool that uses extract frames from IFF ILBM color cycling file"
HOMEPAGE="https://github.com/Sembiance/ilbm2frames"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/sdl2-ilbm"
RDEPEND=${DEPEND}

src_install() {
	dobin ilbm2frames
}
