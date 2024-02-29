EAPI=8

DESCRIPTION="An SVG rendering library."
HOMEPAGE="https://github.com/RazrFalcon/resvg/releases"
LICENSE="MPL-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin resvg
}
