EAPI=8

inherit cmake

DESCRIPTION="Program for determining types of files"
HOMEPAGE="https://github.com/horsicq/Detect-It-Easy"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}/DIE-engine"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-qt/qtscript:5[scripttools]
	dev-qt/qtconcurrent
	dev-qt/qtsql"
RDEPEND="${DEPEND}"

src_install() {
	cmake_src_install

	dosym /usr/lib64/die /usr/lib/die
}
