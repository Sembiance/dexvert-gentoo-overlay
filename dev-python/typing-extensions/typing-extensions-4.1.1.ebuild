EAPI=7

PYTHON_COMPAT=( python3_{7..9} )
DISTUTILS_USE_SETUPTOOLS=pyproject.toml

inherit distutils-r1

DESCRIPTION="Typing Extensions - Backported and Experimental Type Hints for Python"
HOMEPAGE="https://pypi.org/project/typing-extensions/#files"
LICENSE="PSF-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/typing_extensions-${PV}.tar.gz"
S="${WORKDIR}/typing_extensions-${PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
