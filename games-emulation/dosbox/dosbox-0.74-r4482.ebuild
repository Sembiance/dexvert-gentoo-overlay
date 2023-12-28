EAPI=8

inherit autotools flag-o-matic

DESCRIPTION="DOS emulator"
HOMEPAGE="https://sourceforge.net/p/dosbox/code-0/HEAD/tree/dosbox/trunk/"
LICENSE="GPL-2"
# Update by choose "Download Snapshot" here: https://sourceforge.net/p/dosbox/code-0/HEAD/tree/dosbox/trunk/
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}-${PR}.zip"
S="${WORKDIR}/${PN}-code-0-${PR}-dosbox-trunk"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="alsa debug hardened opengl"

DEPEND="alsa? ( media-libs/alsa-lib )
	opengl? ( virtual/glu virtual/opengl )
	debug? ( sys-libs/ncurses:0 )
	media-libs/libpng:0
	media-libs/libsdl[joystick,video,X]
	media-libs/sdl-net
	media-libs/sdl-sound"
RDEPEND=${DEPEND}

PATCHES=(
	"${FILESDIR}/${PN}-SCRIPT.patch"
	"${FILESDIR}/${PN}-gcc46.patch"
	"${FILESDIR}/${PN}-normal4x.patch"
	"${FILESDIR}/${PN}-noRebootDelay.patch"
	"${FILESDIR}/${PN}-addVIDREC.patch"
	"${FILESDIR}/${PN}-video-debug.patch"
	)

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable alsa alsa-midi) \
		$(use_enable !hardened dynamic-core) \
		$(use_enable !hardened dynamic-x86) \
		$(use_enable debug) \
		$(use_enable opengl)
}
