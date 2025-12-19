EAPI=8

PYTHON_COMPAT=( python3_{8..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1

DESCRIPTION="arCHMage converts CHM files to HTML, plain text and PDF."
HOMEPAGE="https://github.com/dottedmag/archmage"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

IUSE="html"

DEPEND="dev-python/pychm
	dev-python/beautifulsoup4
	dev-python/sgmllib3k
	html? ( app-text/htmldoc )"
RDEPEND="${DEPEND}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"
