EAPI=7

inherit git-r3

DESCRIPTION="CLI tool that extracts installshield .z files"
HOMEPAGE="https://github.com/OmniBlade/isextract"
EGIT_REPO_URI="https://github.com/OmniBlade/isextract.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin build/isextract
}
