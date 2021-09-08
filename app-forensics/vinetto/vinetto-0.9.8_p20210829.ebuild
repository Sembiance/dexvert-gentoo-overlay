EAPI=7

PYTHON_COMPAT=( python3_{7..9} )

inherit distutils-r1

DESCRIPTION="Extract thumbs from Thumbs.db files"
HOMEPAGE="https://github.com/AtesComp/Vinetto"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/Vinetto-master"

SLOT="0"
KEYWORDS="amd64"
RESTRICT="mirror test"

DEPEND="dev-python/pillow[${PYTHON_USEDEP}]"
