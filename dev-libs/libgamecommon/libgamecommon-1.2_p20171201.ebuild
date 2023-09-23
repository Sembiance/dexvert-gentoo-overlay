EAPI=8

inherit autotools

DESCRIPTION="Camoto suite support library"
HOMEPAGE="https://github.com/Malvineous/libgamecommon"
LICENSE="GPL-3"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
	default
	eautoreconf
}
