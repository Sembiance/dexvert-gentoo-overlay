EAPI=7

inherit git-r3
DESCRIPTION="C++ header files for common tasks, used by resource_dasm"
HOMEPAGE="https://github.com/fuzziqersoftware/phosg"
EGIT_REPO_URI="https://github.com/fuzziqersoftware/phosg.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror"
PATCHES=( "${FILESDIR}/makefile-fixes.patch" )
