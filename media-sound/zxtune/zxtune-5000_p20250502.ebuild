EAPI=8

DESCRIPTION="Chiptune converter"
HOMEPAGE="https://bitbucket.org/zxtune/zxtune/downloads/?tab=branches"
LICENSE="MIT"
GIT_HASH="b98d60a443ab"
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

PATCHES=(
	"${FILESDIR}/fix-compile.patch"
	"${FILESDIR}/fix-compile2.patch"
	"${FILESDIR}/fix-compile3.patch"
)

src_compile() {
	cd apps/zxtune123
	emake platform=linux
}

src_install() {
	dobin bin/linux/release/zxtune123
}
