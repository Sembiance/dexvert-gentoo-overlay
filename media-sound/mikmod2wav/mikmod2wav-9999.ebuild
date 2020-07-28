EAPI=7

inherit git-r3

DESCRIPTION="CLI tool that converts a MOD to a WAV using libmikmod"
HOMEPAGE="https://github.com/Sembiance/mikmod2wav"
EGIT_REPO_URI="https://github.com/Sembiance/mikmod2wav.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="media-libs/libmikmod"
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin mikmod2wav
}
