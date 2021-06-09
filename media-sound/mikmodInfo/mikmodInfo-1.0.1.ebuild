EAPI=7

DESCRIPTION="CLI tool that uses libmikmod to get and print MOD info"
HOMEPAGE="https://github.com/Sembiance/mikmodInfo"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libmikmod"
RDEPEND="${DEPEND}"

src_install() {
	dobin mikmodInfo
}
