EAPI=7

DESCRIPTION="Retro Computer image converter"
HOMEPAGE="http://recoil.sourceforge.net"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin recoil2png
	doman recoil2png.1
}
