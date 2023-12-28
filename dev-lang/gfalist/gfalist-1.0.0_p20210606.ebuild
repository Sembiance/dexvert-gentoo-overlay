EAPI=8

DESCRIPTION="Tool to convert or extract data in certain AMOS banks"
HOMEPAGE="https://github.com/Sembiance/gfalist"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
MY_PV=$(ver_cut 1-3)
S="${WORKDIR}/${PN}-${MY_PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	doman gfalist.1
	dobin gfalist
	dodoc COPYING HISTORY README doc/gfa_frmt.txt
}
