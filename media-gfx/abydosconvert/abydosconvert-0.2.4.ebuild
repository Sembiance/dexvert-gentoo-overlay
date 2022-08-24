EAPI=7

inherit cmake

DESCRIPTION="CLI tool that uses abydos lib to convert images"
HOMEPAGE="https://github.com/Sembiance/abydosconvert"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/abydos"
RDEPEND=${DEPEND}

src_install() {
	dobin ${BUILD_DIR}/src/abydosconvert
}
