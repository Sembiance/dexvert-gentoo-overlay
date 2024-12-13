EAPI=8

inherit cmake flag-o-matic

DESCRIPTION="Emulator of x86-based machines based on PCem"
HOMEPAGE="https://github.com/86Box/86Box"
LICENSE="GPL-2+"
MY_PV=$(ver_cut 1-3)
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
	media-libs/libpng:=
	media-libs/libsdl2
	media-libs/openal
	media-libs/rtmidi
	net-libs/libslirp
	sys-libs/zlib
	x11-libs/libXi
	vnc? ( net-libs/libvncserver )"
RDEPEND="
	${DEPEND}
	media-sound/fluidsynth
	media-libs/munt-mt32emu
	media-libs/openal
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtnetwork:5
	dev-qt/qtopengl:5
	dev-qt/qttranslations:5
	dev-qt/qtwidgets:5
	kde-frameworks/extra-cmake-modules"
BDEPEND="virtual/pkgconfig"

PATCHES=( "${FILESDIR}/vnc.patch" "${FILESDIR}/removeCopiedItDialog.patch" )

src_configure() {
	# LTO needs to be filtered. See https://bugs.gentoo.org/854507
	filter-lto
	append-flags -fno-strict-aliasing

	# Once QT6 is set, can ADD an additional flag: -DUSE_QT6="ON"
	# Will need to update the RDEPENDs above
	local mycmakeargs=(
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
