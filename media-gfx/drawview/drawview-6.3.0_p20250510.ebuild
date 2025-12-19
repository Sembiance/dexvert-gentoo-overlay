EAPI=8

inherit cmake

DESCRIPTION="App to handle Acorn/RISC OS Draw vector files"
HOMEPAGE="https://github.com/martenjj/drawview"
LICENSE="GPL2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-frameworks6"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/qt.patch" )

DEPEND="dev-qt/qtcore
	dev-qt/qtgui
	kde-frameworks/extra-cmake-modules
	kde-frameworks/kxmlgui:6
	kde-frameworks/kcrash:6
	kde-frameworks/kauth:6
	kde-frameworks/ki18n:6
	dev-qt/qtsvg:6"
RDEPEND=${DEPEND}
