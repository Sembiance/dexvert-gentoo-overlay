EAPI=8

DESCRIPTION="Decompile C64 BASIC files"
HOMEPAGE="https://github.com/vroby65/detox64"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin src/detox64
}
