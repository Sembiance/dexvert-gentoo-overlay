EAPI=8

inherit cmake

DESCRIPTION="CLI tool that uses dsktools to extract TRS/80 JVC disk images"
HOMEPAGE="https://github.com/Sembiance/"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
S="${WORKDIR}/${PN}"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=""
RDEPEND=${DEPEND}

src_install() {
	dobin ${BUILD_DIR}/jvcextract
}
