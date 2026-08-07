EAPI=8

PYTHON_COMPAT=( python3_{7..15} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="Pythonic bindings for FFmpeg's libraries."
HOMEPAGE="https://pypi.org/project/av/#files"
LICENSE="BSD-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/av-${PV}.tar.gz"
S="${WORKDIR}/av-${PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"
