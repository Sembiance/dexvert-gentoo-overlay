EAPI=8

DESCRIPTION="Extracts assets from macromedia director files"
HOMEPAGE="https://github.com/Sembiance/dexvert"
LICENSE="Apache-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
    dobin undirector
}
