EAPI=8

DESCRIPTION="CLI tool that uses libmikmod to get and print MOD info"
HOMEPAGE="https://github.com/Sembiance/mikmodInfo"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libmikmod"
RDEPEND="${DEPEND}"

src_install() {
	dobin mikmodInfo
}
