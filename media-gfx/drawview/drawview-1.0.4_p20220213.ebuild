EAPI=8

inherit cmake

DESCRIPTION="App to handle Acorn/RISC OS Draw vector files"
HOMEPAGE="https://github.com/martenjj/drawview"
LICENSE="GPL2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-frameworks5"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-qt/qtcore:5
	dev-qt/qtgui:5
	kde-frameworks/extra-cmake-modules
	kde-frameworks/kxmlgui
	kde-frameworks/ki18n
	kde-frameworks/kauth
	kde-frameworks/kcrash
	dev-qt/qtsvg:5"
RDEPEND=${DEPEND}
