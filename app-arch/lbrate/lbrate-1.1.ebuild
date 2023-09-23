EAPI=8

DESCRIPTION="LBR extraction program"
HOMEPAGE="http://www.svgalib.org/rus/lbrate.html"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin lbrate
	doman lbrate.1
}
