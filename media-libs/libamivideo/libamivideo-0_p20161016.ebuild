EAPI=8

inherit autotools

DESCRIPTION="Conversion library for Amiga planar graphics data and EHB, HAM screen modes"
HOMEPAGE="https://github.com/svanderburg/libamivideo"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
	default

	eautoreconf
}
