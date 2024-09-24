EAPI=8
inherit cmake

DESCRIPTION="Old Macintosh format converter"
HOMEPAGE="https://github.com/ParksProjets/Maconv"
LICENSE="GPL-3.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/Maconv-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/compile_includes.patch" )
