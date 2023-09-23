EAPI=8

DESCRIPTION="Command line tool to convert MSA files into ST files"
HOMEPAGE="https://web.archive.org/web/20060507110406/https://www.uni-ulm.de/~s_thuth/ix/msa-0.1.0.tar.gz"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
    dobin msa
}
