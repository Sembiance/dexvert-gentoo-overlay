EAPI=8

inherit cmake

DESCRIPTION="CLI tool that uses openNURBS lib to convert rhino openNURBS 3dm to GLB"
HOMEPAGE="https://github.com/Sembiance/dexvert"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin ${BUILD_DIR}/3dm2glb
}
