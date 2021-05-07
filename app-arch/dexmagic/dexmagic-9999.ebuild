EAPI=7

inherit git-r3

DESCRIPTION="CLI app that just checks some things in C to help identify a file"
HOMEPAGE="https://github.com/Sembiance/dexmagic"
EGIT_REPO_URI="https://github.com/Sembiance/dexmagic.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin dexmagic
}
