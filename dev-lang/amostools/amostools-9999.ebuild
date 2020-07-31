EAPI=7

inherit git-r3
DESCRIPTION="Tools to work with AMOS programs"
HOMEPAGE="https://github.com/kyz/amostools/"
EGIT_REPO_URI="https://github.com/kyz/amostools.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror"

src_install() {
    dobin listamos
	dobin dumpamos
	dobin unlockamos

	insinto /usr/share/amostools
	doins -r extensions
}
