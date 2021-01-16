EAPI=7

inherit git-r3

DESCRIPTION="Tool to convert or extract data in certain AMOS banks"
HOMEPAGE="https://github.com/Sembiance/gfalist"
EGIT_REPO_URI="https://github.com/Sembiance/gfalist.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror test"

src_install() {
	doman gfalist.1
	dobin gfalist
	dodoc COPYING HISTORY README doc/gfa_frmt.txt
}
