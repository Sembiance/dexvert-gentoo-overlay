EAPI=8

DESCRIPTION="Decompiler for Macromedia Shockwave/Macromedia Director/Adobe Shockwave/Adobe Director"
HOMEPAGE="https://github.com/ProjectorRays/ProjectorRays"
LICENSE="MPL-2.0"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-util/xxdi
	media-sound/mpg123
	sys-libs/zlib
	dev-libs/boost"
RDEPEND=${DEPEND}

src_configure() {
	sed -i "s/xxd -i/xxdi.pl/" Makefile
}

src_install() {
	dobin projectorrays
}
