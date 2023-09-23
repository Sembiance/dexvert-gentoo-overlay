EAPI=8

DESCRIPTION="CLI app that uses libconfini to validate that an INI file is valid"
LICENSE="MIT"
HOMEPAGE="https://github.com/Sembiance/inivalidate"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-libs/libconfini
	dev-libs/jansson"
RDEPEND=${DEPEND}

src_install() {
	dobin inivalidate
}
