EAPI=8

DESCRIPTION="CLI tool that uses libmikmod to get and print MOD info"
HOMEPAGE="https://github.com/Sembiance/midistar2mid"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin midistar2mid
}
