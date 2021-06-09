EAPI=7

DESCRIPTION="Extracts .xpk and other amiga compressed files"
HOMEPAGE="http://zakalwe.fi/~shd/foss/${PN}/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.bz2"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin ${PN}
	doman ${PN}.1
}
