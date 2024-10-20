EAPI=8

DESCRIPTION="Tools to manipulate SAP Thomson disk images"
HOMEPAGE="http://nostalgies.thomsonistes.org/transfert.html"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin sap2
	dobin sapfs
}
