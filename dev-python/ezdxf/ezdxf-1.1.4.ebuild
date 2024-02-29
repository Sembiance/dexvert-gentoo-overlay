EAPI=8

PYTHON_COMPAT=( python3_{7..11} )

inherit distutils-r1

DESCRIPTION="A library to create and modify DXF drawings"
HOMEPAGE="https://pypi.org/project/ezdxf/#files"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	dev-python/pyparsing[${PYTHON_USEDEP}]
	dev-python/matplotlib[${PYTHON_USEDEP}]"
