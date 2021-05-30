EAPI=7

inherit git-r3

DESCRIPTION="CLI tool that can play FM Towns Euphony EUP files"
HOMEPAGE="https://github.com/gzaffin/${PN}"
EGIT_REPO_URI="https://github.com/gzaffin/${PN}.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin eupplay
}
