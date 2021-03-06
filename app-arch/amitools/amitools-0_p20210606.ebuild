EAPI=7

PYTHON_COMPAT=( python3_{8,9} )

inherit distutils-r1

DESCRIPTION="Tools to work with AmigaOS files"
HOMEPAGE="http://lallafa.de/blog/amiga-projects/${PN}/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

DEPEND="dev-python/wheel"
RDEPEND="${DEPEND}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

python_prepare_all() {
    sed -i "/pytest-runner/d" setup.py || die
    distutils-r1_python_prepare_all
}
