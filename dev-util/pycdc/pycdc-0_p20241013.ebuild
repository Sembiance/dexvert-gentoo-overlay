EAPI=8

inherit cmake

DESCRIPTION="C++ python bytecode disassembler and decompiler"
HOMEPAGE="https://github.com/zrax/pycdc"
LICENSE="GPL-3.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
	cmake_src_prepare
	sed -i 's/-Wno-error=shadow/-Wno-error=shadow -Wno-template-id-cdtor/' CMakeLists.txt
}
