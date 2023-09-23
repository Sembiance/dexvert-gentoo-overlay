EAPI=8

DESCRIPTION="Tool to convert or extract data in certain AMOS banks"
HOMEPAGE="https://github.com/dschwen/amosbank"
LICENSE="CC-BY-SA-3.0"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
   dobin amosbank
}
