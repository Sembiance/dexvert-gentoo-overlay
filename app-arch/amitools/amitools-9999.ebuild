EAPI=7

PYTHON_COMPAT=( python3_7 )

inherit git-r3 distutils-r1

DESCRIPTION="Tools to work with AmigaOS files"
HOMEPAGE="http://lallafa.de/blog/amiga-projects/amitools/"
EGIT_REPO_URI="https://github.com/cnvogelg/amitools.git"

DEPEND="dev-python/wheel"
RDEPEND="${DEPEND}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror test"

python_prepare_all() {
    sed -i "/pytest-runner/d" setup.py || die
    distutils-r1_python_prepare_all
}
