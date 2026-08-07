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

RDEPEND="
	dev-qt/qtbase:6[concurrent,gui,network,opengl,sql,widgets]
    dev-qt/qtdeclarative:6
    dev-qt/qtsvg:6"
DEPEND="${RDEPEND}"
BDEPEND="dev-qt/qttools:6[linguist]"

PATCHES=( "${FILESDIR}/Detect-It-Easy-4.0.0-msdos.patch" )

src_install() {
	cmake_src_install

	dosym /usr/lib64/die /usr/lib/die
}
