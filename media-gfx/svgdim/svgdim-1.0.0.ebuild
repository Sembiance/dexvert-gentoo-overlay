EAPI=7

DESCRIPTION="CLI tool that uses prints the dimensions of an SVG file"
HOMEPAGE="https://github.com/Sembiance/svgdim"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="gnome-base/librsvg"
RDEPEND=${DEPEND}

src_install() {
	dobin svgdim
}
