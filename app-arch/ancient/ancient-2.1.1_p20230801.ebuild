EAPI=8

inherit autotools

DESCRIPTION="Decompression routines for ancient formats"
HOMEPAGE="https://github.com/temisu/ancient"
LICENSE="BSD-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
	default

	eautoreconf
}
