EAPI=8

inherit cmake

DESCRIPTION="Assorted tools to handle RPG Maker 2000/2003 files"
HOMEPAGE="https://github.com/EasyRPG/Tools"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/Tools-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="dev-cpp/nlohmann_json
	app-arch/zopfli
	dev-libs/liblcf"
DEPEND="${RDEPEND}"

src_install() {
	cmake_src_install

	# This file always appears broken to revdep-rebuild and I don't use it, so just delete it
	rm -f "${D}"/usr/bin/xyzcrush
}
