EAPI=7

inherit git-r3

DESCRIPTION="Tools to extract ADF files"
HOMEPAGE="https://github.com/mist64/extract-adf"
EGIT_REPO_URI="https://github.com/mist64/extract-adf.git"

DEPEND=""
RDEPEND="${DEPEND}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror"
PATCHES=( ${FILESDIR}"/header-includes.patch" ${FILESDIR}"/segfault-fix.patch" )

src_install() {
	dobin extract-adf
}
