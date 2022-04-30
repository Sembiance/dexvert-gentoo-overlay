EAPI=7

DESCRIPTION="Command line tool to convert to/from Qualcomm Purevoice Audio files"
HOMEPAGE="https://web.archive.org/web/20101229181642/http://www.qualcomm.com/products_services/mobile_content_services/voice/purevoice.html"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}_linux_64bit_v${PV}.tar.gz -> ${P}.tar"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="sys-libs/libstdc++-v3"
RDEPEND="${DEPEND}"

src_install() {
	dobin pvconv
	dodoc PVConvReadmeLinux.txt
}
