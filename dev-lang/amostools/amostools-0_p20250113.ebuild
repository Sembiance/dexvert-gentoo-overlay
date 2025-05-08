EAPI=8

DESCRIPTION="Tools to work with AMOS programs"
LICENSE="MIT"
HOMEPAGE="https://github.com/kyz/amostools/"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
    dobin listamos
	dobin dumpamos
	dobin unlockamos

	insinto /usr/share/amostools
	doins -r extensions
}
