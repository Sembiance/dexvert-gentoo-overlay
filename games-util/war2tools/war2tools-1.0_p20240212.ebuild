EAPI=8

inherit cmake

DESCRIPTION="https://github.com/war2/war2tools"
HOMEPAGE="https://github.com/war2/war2tools"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test strip"

RDEPEND="virtual/jpeg
	media-libs/libpng
	sys-libs/zlib"
DEPEND="${RDEPEND}"

src_install() {
	cmake_src_install

	mv "${D}"/usr/lib "${D}"/usr/lib64
}
