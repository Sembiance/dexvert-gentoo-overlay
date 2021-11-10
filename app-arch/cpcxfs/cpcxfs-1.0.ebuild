EAPI=7

DESCRIPTION="Command line tool work with CPC disk files"
HOMEPAGE="http://www.cpcwiki.eu/forum/applications/cpcxfs/"
LICENSE="GPL"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
    dobin src/cpcxfs
}
