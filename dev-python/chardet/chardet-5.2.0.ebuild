# v6 in gentoo misses tons of identifications and v7 is claude vibe coded
EAPI=8

PYTHON_COMPAT=( python3_{11..14} pypy3_11 )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Universal encoding detector"
HOMEPAGE="https://github.com/chardet/chardet/ https://pypi.org/project/chardet/"
LICENSE="LGPL-2.1"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"
