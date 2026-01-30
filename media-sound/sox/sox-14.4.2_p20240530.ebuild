# This replaces the Gentoo version as they switched to sox_ng (which I also have an overlay for) but sox_ng has issues with corrupted WAV files: https://codeberg.org/sox_ng/sox_ng/issues/747
EAPI=8

inherit autotools

DESCRIPTION="SoX is the Swiss Army Knife of sound processing utilities. "
HOMEPAGE="https://sourceforge.net/p/sox/code/ci/master/tree/"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/sox-code-f3094754a7c2a7e55c35621d20fa9945736e72df"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test strip"

RDEPEND="
	dev-libs/libltdl:0=
	>=media-sound/gsm-1.0.12-r1
	sys-apps/file
	media-libs/alsa-lib
	media-libs/opencore-amr
	>=media-sound/lame-3.98.4
	>=media-libs/flac-1.1.3:=
	media-libs/libid3tag:=
	media-libs/libmad
	media-libs/opusfile
	media-libs/libogg
	media-libs/libvorbis
	media-libs/libpng:0=
	virtual/zlib:=
	>=media-libs/libsndfile-1.0.11
	media-sound/twolame
	media-sound/wavpack"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"

DOCS=( AUTHORS ChangeLog  )

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	local myeconfargs=(
		--disable-debug
		--with-distro="Gentoo"
		--enable-replace

		--enable-alsa
		--enable-amrnb
		--enable-amrwb
		--with-lame
		--enable-flac
		--with-id3tag
		--with-mad
		--with-magic
		--enable-openmp
		--enable-oggvorbis
		--with-png
		--enable-sndfile
		--with-twolame
		--enable-wavpack

		--disable-ao
		--without-ladspa
		--enable-opus
		--disable-oss
		--disable-pulseaudio
		--disable-sndio
	)
	econf "${myeconfargs[@]}"
}
