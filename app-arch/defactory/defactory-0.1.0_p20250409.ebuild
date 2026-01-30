EAPI=8

DESCRIPTION="Extract files from Indigo Rose Setup Factory installers without executing them."
HOMEPAGE="https://codeberg.org/CYBERDEV/defactory"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test strip"

src_install() {
	doman defactory.1
	dobin defactory
}