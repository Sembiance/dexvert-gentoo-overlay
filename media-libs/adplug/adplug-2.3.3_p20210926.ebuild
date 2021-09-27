EAPI=7

inherit autotools

DESCRIPTION="Hardware-independent AdLib sound player library"
HOMEPAGE="https://github.com/adplug/adplug"
LICENSE="LGPL-2.1"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="dev-libs/libbinio"
DEPEND="${RDEPEND}"

src_prepare() {
	default

	eautoreconf
}
