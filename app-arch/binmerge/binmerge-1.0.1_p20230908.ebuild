EAPI=8

DESCRIPTION="Tool to merge multiple bin/cue tracks into one."
HOMEPAGE="https://github.com/putnam/binmerge"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
    dobin binmerge
}
