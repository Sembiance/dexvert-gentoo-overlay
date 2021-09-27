EAPI=7

DESCRIPTION="Chiptune converter"
HOMEPAGE="https://github.com/vitamin-caig/zxtune/releases"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}-r${PV}.zip"
S="${WORKDIR}/${PN}-r${PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/openal
	media-libs/libsdl
	media-libs/flac
	dev-libs/boost
	media-video/ffmpeg
	dev-libs/boost"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/fix-compile.patch" )

src_compile() {
	cd apps/zxtune123
	emake platform=linux
}

src_install() {
	dobin bin/linux/release/zxtune123
}
