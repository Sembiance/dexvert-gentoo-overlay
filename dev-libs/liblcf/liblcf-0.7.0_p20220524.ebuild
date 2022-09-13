EAPI=7

inherit cmake

DESCRIPTION="Library to handle RPG Maker 2000/2003 and EasyRPG projects"
HOMEPAGE="https://github.com/EasyRPG/liblcf"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	cmake_src_install
	find "$D"/usr/share/mime -maxdepth 1 -type f -exec rm {} \;
}