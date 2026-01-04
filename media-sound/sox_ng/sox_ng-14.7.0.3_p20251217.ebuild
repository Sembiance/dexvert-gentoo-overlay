# This replaces sox. The gentoo sox (which uses sox_ng now) is bugged and won't load dynamically linked library formats like gsm and mp3. Mine here just compiles them in
EAPI=8

inherit autotools

DESCRIPTION="sox_ng is another Swiss Army Knife of sound processing utilities"
HOMEPAGE="https://codeberg.org/sox_ng/sox_ng"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}/${PN}"

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
	# Workaround for LLD (bug #914867)
	# https://codeberg.org/sox_ng/sox_ng/issues/69
	#append-ldflags $(test-flags-CCLD -Wl,--undefined-version)
	local myeconfargs=(
		--disable-debug
		--with-distro="Gentoo"
		--enable-replace

		--with-alsa
		--with-amrnb
		--with-amrwb
		--with-lame
		--with-flac
		--with-id3tag
		--with-mad
		--with-magic
		--enable-openmp
		--with-oggvorbis
		--with-png
		--with-sndfile
		--with-twolame
		--with-wavpack

		--without-ao
		--without-ffmpeg
		--without-fftw
		--without-ladspa
		--without-opus
		--without-oss
		--without-pulseaudio
		--without-sndio
		--without-speexdsp
	)
	econf "${myeconfargs[@]}"
}
