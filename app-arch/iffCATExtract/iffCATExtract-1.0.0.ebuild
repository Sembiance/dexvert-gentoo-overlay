EAPI=8

DESCRIPTION="Extracts sub files from IFF CAT files"
HOMEPAGE="https://github.com/Sembiance/iffCATExtract/releases"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libiff"
RDEPEND="${DEPEND}"

src_install() {
	dobin iffCATExtract
}
