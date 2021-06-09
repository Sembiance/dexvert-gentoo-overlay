EAPI=7

DESCRIPTION="CLI app that just checks some things in C to help identify a file"
HOMEPAGE="https://github.com/Sembiance/dexmagic"
LICENSE="MIT"e
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin dexmagic
}
