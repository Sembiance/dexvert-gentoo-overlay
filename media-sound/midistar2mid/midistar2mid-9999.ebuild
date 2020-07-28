EAPI=7

inherit git-r3

DESCRIPTION="CLI tool that uses libmikmod to get and print MOD info"
HOMEPAGE="https://github.com/Sembiance/midistar2mid"
EGIT_REPO_URI="https://github.com/Sembiance/midistar2mid.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin midistar2mid
}
