EAPI=7

DESCRIPTION="C++ header files for common tasks, used by resource_dasm"
HOMEPAGE="https://github.com/fuzziqersoftware/phosg"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/makefile-fixes.patch" )
