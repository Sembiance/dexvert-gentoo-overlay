EAPI=7

DESCRIPTION="CLI tool that can play FM Towns Euphony EUP files"
HOMEPAGE="https://github.com/gzaffin/eupmini"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin eupplay
}
