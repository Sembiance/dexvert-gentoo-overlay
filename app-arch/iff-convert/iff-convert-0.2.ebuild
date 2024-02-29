EAPI=8

DESCRIPTION="A simple converter for IFF files"
HOMEPAGE="http://www.boomerangsworld.de/cms/tools/iff-convert.html"
LICENSE="GPL 3.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libsndfile
	dev-libs/jansson"
RDEPEND=${DEPEND}
