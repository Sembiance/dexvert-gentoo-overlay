EAPI=8

PYTHON_COMPAT=( python3_{7..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Extract thumbs from Thumbs.db files"
HOMEPAGE="https://github.com/AtesComp/Vinetto"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/Vinetto-master"

SLOT="0"
KEYWORDS="amd64"
RESTRICT="mirror test"

#PATCHES=( "${FILESDIR}/python3.patch" )

DEPEND="dev-python/pillow[${PYTHON_USEDEP}]"
