EAPI=8
inherit cmake

DESCRIPTION="Limited Error Raster Compression"
HOMEPAGE="https://github.com/Esri/lerc"
LICENSE="Apache-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/lerc-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"
