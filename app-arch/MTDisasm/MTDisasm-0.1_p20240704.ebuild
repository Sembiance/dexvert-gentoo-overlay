EAPI=8

inherit cmake

DESCRIPTION="mTropolis disassembler"
HOMEPAGE="https://github.com/elasota/MTDisasm"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-main/${PN}/unbundle"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin ${BUILD_DIR}/unbundle
}
