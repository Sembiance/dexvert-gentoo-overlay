EAPI=8

DESCRIPTION="Chiptune converter"
HOMEPAGE="https://bitbucket.org/zxtune/zxtune/downloads/?tab=branches"
LICENSE="MIT"
GIT_HASH="0cc4569cf704"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}-${PN}-${GIT_HASH}.zip"
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
