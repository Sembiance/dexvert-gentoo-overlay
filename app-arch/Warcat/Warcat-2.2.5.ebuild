EAPI=8

PYTHON_COMPAT=( python3_{7..13} )

inherit distutils-r1

DESCRIPTION="Tool and library for handling Web ARChive (WARC) files."
HOMEPAGE="https://pypi.org/project/Warcat/#files"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/isodate[${PYTHON_USEDEP}]"
