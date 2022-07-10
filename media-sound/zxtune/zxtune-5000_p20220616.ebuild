EAPI=7

DESCRIPTION="Chiptune converter"
HOMEPAGE="https://bitbucket.org/zxtune/zxtune/downloads/?tab=branches"
LICENSE="MIT"
GIT_HASH="7ee840f6bd0f"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}-${PN}-${GIT_HASH}.zip"
S="${WORKDIR}/${PN}-${PN}-${GIT_HASH}"

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
