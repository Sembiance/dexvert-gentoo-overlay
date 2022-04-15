EAPI=7

inherit cmake-utils

DESCRIPTION="C++ python bytecode disassembler and decompiler"
HOMEPAGE="https://github.com/zrax/pycdc"
LICENSE="GPL-3.0"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"
