EAPI=8

PYTHON_COMPAT=( python3_{7..13} )

inherit distutils-r1

DESCRIPTION="A Cython binding for a m68k system emulator"
HOMEPAGE="https://pypi.org/project/machine68k/#files"
LICENSE="GPL 2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="<=dev-python/setuptools-72.1.999[${PYTHON_USEDEP}]"
