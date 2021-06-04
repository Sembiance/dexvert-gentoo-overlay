EAPI=7

inherit git-r3
DESCRIPTION="Various tools to extract data from MacOS resource forks"
HOMEPAGE="https://github.com/fuzziqersoftware/resource_dasm"
EGIT_REPO_URI="https://github.com/fuzziqersoftware/resource_dasm.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DEPEND="dev-libs/phosg"

RESTRICT="mirror"

src_install() {
	dobin resource_dasm
	dobin hypercard_dasm
	dobin render_bits
}
