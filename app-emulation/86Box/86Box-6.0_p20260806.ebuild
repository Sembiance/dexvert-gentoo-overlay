EAPI=8

inherit cmake flag-o-matic

DESCRIPTION="Emulator of x86-based machines based on PCem"
HOMEPAGE="https://github.com/86Box/86Box"
LICENSE="GPL-2+"
MY_PV=$(ver_cut 1-2)
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/roms-${MY_PV}.zip"
# Get ROMS from: https://github.com/86Box/roms/releases

S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="dinput +experimental new-dynarec vnc"

DEPEND="
	app-emulation/faudio
	dev-libs/libevdev
	media-libs/freetype:2=
	>=media-libs/libchdr-0.3.0:=
	media-libs/libpng:=
	media-libs/libsdl3
	media-libs/openal
	media-libs/rtmidi
	net-libs/libslirp
	sys-libs/zlib
	x11-libs/libXi
	dev-libs/wayland
	dev-qt/qtbase:6=[gui,network,opengl,widgets]
	x11-libs/libX11
	x11-libs/libXi
	x11-libs/libxkbcommon
	vnc? ( net-libs/libvncserver )"
RDEPEND="
	${DEPEND}
	media-sound/fluidsynth
	media-libs/munt-mt32emu
	media-libs/openal
	dev-qt/qttranslations:6"
BDEPEND="virtual/pkgconfig
	kde-frameworks/extra-cmake-modules"

PATCHES=(
	"${FILESDIR}/vnc.patch"
	"${FILESDIR}/removeCopiedItDialog_2.patch"
	"${FILESDIR}/system-libchdr.patch"
)

src_configure() {
	# LTO needs to be filtered. See https://bugs.gentoo.org/854507
	filter-lto
	append-flags -fno-strict-aliasing

	local mycmakeargs=(
		-DCHDR_EXTERNAL="ON"
		-DCPPTHREADS="ON"
		-DDEV_BRANCH="$(usex experimental)"
		-DDINPUT="$(usex dinput)"
		-DDYNAREC="ON"
		-DNEW_DYNAREC="$(usex new-dynarec)"
		-DSLIRP_EXTERNAL="ON"
		-DMUNT_EXTERNAL="ON"
		-DFLUIDSYNTH="ON"
		-DMINITRACE="OFF"
		-DMUNT="ON"
		-DOPENAL="ON"
		-DPREFER_STATIC="OFF"
		-DQT="ON"
		-DUSE_QT6="ON"
		-DVNC="$(usex vnc)"
		-DRELEASE="OFF"
	)

	cmake_src_configure
}

src_install() {
	cmake_src_install

	insinto /usr/share/${PN}
	mv ${WORKDIR}/roms-${MY_PV} ${WORKDIR}/roms
	doins -r ${WORKDIR}/roms
}
