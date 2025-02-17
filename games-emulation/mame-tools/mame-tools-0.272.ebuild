EAPI=8

inherit qmake-utils toolchain-funcs

DESCRIPTION="Tools for MAME"
HOMEPAGE="https://github.com/mamedev/mame/releases"
LICENSE="MAME-LICENSE"
MY_PV="${PV//./}"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/mame-mame${MY_PV}.tar.gz"
S="${WORKDIR}/mame-mame${MY_PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libsdl2
	media-libs/sdl2-ttf"
RDEPEND=${DEPEND}

src_compile() {
	function my_emake() {
		# Workaround conflicting $ARCH variable used by both Gentoo's portage and by Mame's build scripts
		OVERRIDE_CC=$(tc-getCC) \
		OVERRIDE_CXX=$(tc-getCXX) \
		OVERRIDE_LD=$(tc-getCXX) \
		QT_HOME="$(qt5_get_libdir)/qt5" \
		ARCH= \
			emake "$@" \
				AR=$(tc-getAR)
	}
	my_emake TOOLS=1 EMULATOR=0 NO_OPENGL=1 NO_USE_PULSEAUDIO=1 NO_USE_PORTAUDIO=1 NO_USE_MIDI=1 USE_QTDEBUG=0 USE_WAYLAND=0 USE_PCAP=0 NO_DEPS=1
}

src_install() {
	for f in castool chdman floptool imgtool jedutil ldresample ldverify romcmp ; do
		dobin ${f}
		doman docs/man/${f}.1
	done
}