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
	kde-frameworks/kxmlgui:5
	kde-frameworks/ki18n:5
	kde-frameworks/kauth:5
	kde-frameworks/kcrash:5
	dev-qt/qtsvg:5"
RDEPEND=${DEPEND}
