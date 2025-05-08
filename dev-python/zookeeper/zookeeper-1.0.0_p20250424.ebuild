EAPI=8

PYTHON_COMPAT=( python3_{7..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Python library for parsing and modifying ZZT worlds"
HOMEPAGE="https://github.com/DrDos0016/zookeeper"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]"
