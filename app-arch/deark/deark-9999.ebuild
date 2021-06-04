EAPI=7

inherit git-r3

DESCRIPTION="Converts miltiple different image types and various archives"
HOMEPAGE="https://entropymine.com/deark/"
EGIT_REPO_URI="https://github.com/jsummers/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin deark
}
