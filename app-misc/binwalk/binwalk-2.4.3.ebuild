# We have this copied here just in case it's removed from Gentoo because 3.x is totally different output than 2.x
EAPI=8

PYTHON_COMPAT=( python3_{10..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="A tool for identifying files embedded inside firmware images"
HOMEPAGE="https://github.com/OSPG/binwalk"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

python_install_all() {
	local DOCS=( API.md INSTALL.md README.md )
	distutils-r1_python_install_all
}
