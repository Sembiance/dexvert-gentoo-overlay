EAPI=8

DESCRIPTION="Apple II ProDOS disk imaging utility"
HOMEPAGE="https://github.com/mach-kernel/cadius"
LICENSE="GPL-3.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/strptime.patch" )

src_install() {
	dobin bin/release/cadius
}
