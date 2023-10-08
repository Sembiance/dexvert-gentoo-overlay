EAPI=8

inherit cmake

DESCRIPTION="A coordinated group of libraries for representing, processing, and visualizing scientific raster data."
HOMEPAGE="https://teem.sourceforge.net/"
LICENSE="${PN}-LICENSE"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}-src.tar.gz"
S="${WORKDIR}/${P}-src"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	cmake_src_install
	mv "${D}"/usr/lib "${D}"/usr/lib64
}
