EAPI=7

inherit git-r3
DESCRIPTION="Tool to convert or extract data in certain AMOS banks"
HOMEPAGE="https://github.com/dschwen/amosbank"
EGIT_REPO_URI="https://github.com/dschwen/amosbank.git"

LICENSE="CC-BY-SA-3.0"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RESTRICT="mirror"

src_install() {
   dobin amosbank
}
