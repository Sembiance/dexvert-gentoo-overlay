EAPI=7

inherit autotools

DESCRIPTION="Decompression routines for ancient formats"
HOMEPAGE="https://github.com/temisu/${PN}_format_decompressor"
LICENSE="BSD-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
	default

	eautoreconf
}
