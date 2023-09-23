EAPI=8

inherit cmake

DESCRIPTION="Nspark dearchiver for RISC OS archives"
HOMEPAGE="https://github.com/mjwoodcock/nspark"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dolib.so ${BUILD_DIR}/libnsparklib.so
	dobin ${BUILD_DIR}/nspark
	dobin ${BUILD_DIR}/sqsh

	cmake_src_install
	default
}
