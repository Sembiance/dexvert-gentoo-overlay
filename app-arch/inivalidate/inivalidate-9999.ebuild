EAPI=7

inherit git-r3

DESCRIPTION="CLI app that uses libconfini to validate that an INI file is valid"
HOMEPAGE="https://github.com/Sembiance/inivalidate"
EGIT_REPO_URI="https://github.com/Sembiance/inivalidate.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/libconfini"
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin inivalidate
}
