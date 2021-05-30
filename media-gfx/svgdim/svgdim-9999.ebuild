EAPI=7

inherit git-r3

DESCRIPTION="CLI tool that uses prints the dimensions of an SVG file"
HOMEPAGE="https://github.com/Sembiance/svgdim"
EGIT_REPO_URI="https://github.com/Sembiance/svgdim.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin svgdim
}
