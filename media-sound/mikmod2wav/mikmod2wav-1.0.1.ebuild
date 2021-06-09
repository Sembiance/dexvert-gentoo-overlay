EAPI=7

DESCRIPTION="CLI tool that converts a MOD to a WAV using libmikmod"
HOMEPAGE="https://github.com/Sembiance/mikmod2wav"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libmikmod"
RDEPEND="${DEPEND}"

src_install() {
	dobin mikmod2wav
}
