EAPI=8

inherit autotools

DESCRIPTION="Camoto suite support library for game music"
HOMEPAGE="https://github.com/Malvineous/libgamemusic"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-libs/boost
	app-text/xmlto
	dev-libs/libgamecommon"
RDEPEND=${DEPEND}

src_prepare() {
	default
	eautoreconf
}
