EAPI=7

inherit cmake

DESCRIPTION="A player library for MSX music formats."
HOMEPAGE="https://github.com/digital-sound-antiques/libkss"
LICENSE="${PN}-LICENSE"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
   cmake_src_compile kss2wav
}

src_install() {
	dobin "${BUILD_DIR}"/kss2wav
}
