EAPI=8

PYTHON_COMPAT=( python3_{7..15} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

MY_P="${PN//-/_}-${PV}"
DESCRIPTION="PPMd compression/decompression library with Gentee installer variant decoder"
HOMEPAGE="https://pypi.org/project/pyppmd-gentee/#files"
LICENSE="LGPL-2.1+"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_P}.tar.gz"

S="${WORKDIR}/${MY_P}"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"
