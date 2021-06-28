EAPI=7

DESCRIPTION="Another Slight Atari Player"
HOMEPAGE="http://asap.sourceforge.net/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"


src_prepare() {
	sed -i "s/\/usr\/local/\/usr/g" Makefile

	default
}
