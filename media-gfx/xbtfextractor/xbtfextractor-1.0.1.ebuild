EAPI=8

DESCRIPTION="utility for extracting XBMC's xbtf (.xbt) texture files"
HOMEPAGE="https://github.com/larshall/xbtfextractor"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-libs/lzo
	media-libs/libpng
	media-libs/libjpeg-turbo
	media-libs/giflib	
	dev-libs/libsquish"
RDEPEND=${DEPEND}

src_install() {
	dobin xbtfextractor
}
