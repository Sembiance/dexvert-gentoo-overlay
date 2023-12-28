EAPI=8

DESCRIPTION="Strips various bytes from the file"
HOMEPAGE="https://github.com/Sembiance/stripGarbage"
LICENSE="GPL-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

S="${WORKDIR}"

src_install() {
	dobin stripGarbage
}
