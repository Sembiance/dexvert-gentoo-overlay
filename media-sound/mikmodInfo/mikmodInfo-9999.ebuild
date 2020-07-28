EAPI=7

inherit git-r3

DESCRIPTION="CLI tool that uses libmikmod to get and print MOD info"
HOMEPAGE="https://github.com/Sembiance/mikmodInfo"
EGIT_REPO_URI="https://github.com/Sembiance/mikmodInfo.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="media-libs/libmikmod"
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin mikmodInfo
}
