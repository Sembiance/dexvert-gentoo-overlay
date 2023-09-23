EAPI=8

inherit autotools

DESCRIPTION="Console based player for AdLib era files"
HOMEPAGE="https://github.com/adplug/adplay-unix"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-unix-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/adplug"
RDEPEND="${DEPEND}"

src_prepare() {
	default

	eautoreconf
}
