EAPI=8

PYTHON_COMPAT=( python3_{8..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Tools to work with AmigaOS files"
HOMEPAGE="https://github.com/cnvogelg/amitools"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}/${PN}"

DEPEND="dev-python/wheel
	dev-python/machine68k"
RDEPEND="${DEPEND}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

python_prepare_all() {
    sed -i "/pytest-runner/d" setup.py || die
    distutils-r1_python_prepare_all
}
