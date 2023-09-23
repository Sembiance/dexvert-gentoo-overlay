EAPI=8

DESCRIPTION="CLI tool that converts a REKO cardset to a PNG"
HOMEPAGE="https://github.com/Sembiance/reko2png"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-gfx/imagemagick"
RDEPEND=${DEPEND}

src_install() {
	dobin rekotoppm
	dobin reko2png
}
