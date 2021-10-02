EAPI=7

inherit cmake-utils

DESCRIPTION="App to handle Acorn/RISC OS Draw vector files"
HOMEPAGE="https://github.com/martenjj/drawview"
LICENSE="GPL2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-frameworks5"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-qt/qtcore
	dev-qt/qtgui
	dev-qt/qtsvg"
RDEPEND=${DEPEND}

PATCHES=( "${FILESDIR}/add_export.patch" )
