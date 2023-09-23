EAPI=8

DESCRIPTION="Another Slight Atari Player"
HOMEPAGE="https://sourceforge.net/projects/asap/files/asap/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"


src_prepare() {
	sed -i "s/\/usr\/local/\/usr/g" Makefile

	default
}
