EAPI=8

inherit cmake

DESCRIPTION="CLI playback of game audio"
HOMEPAGE="https://github.com/vgmstream/vgmstream"
LICENSE="GPL-2"
SRC_URI="
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/LibAtrac9-0.0.3_p20250314.zip
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/libg719_decode-0.0.1_p20230115.zip
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/celt-0.6.1.tar.gz
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/celt-0.11.0.tar.gz
"
S="${WORKDIR}/vgmstream-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="
	media-video/ffmpeg:=
	media-sound/mpg123
	media-libs/speex
	media-libs/libogg
	media-libs/libvorbis"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"

DOCS=( README.md doc/FORMATS.md doc/USAGE.md )

src_configure() {
	local source_version
	source_version=$(sh ./version-get.sh) || die "Unable to determine source version"

	local mycmakeargs=(
		-DVGMSTREAM_VERSION="${source_version}"
		-DBUILD_CLI=ON
		-DBUILD_V123=OFF
		-DBUILD_AUDACIOUS=OFF
		-DBUILD_SHARED_LIBS=OFF
		-DBUILD_STATIC=OFF
		-DFETCHCONTENT_FULLY_DISCONNECTED=ON
		-DUSE_MPEG=ON
		-DUSE_VORBIS=ON
		-DUSE_FFMPEG=ON
		-DUSE_G7221=ON
		-DUSE_G719=ON
		-DG719_PATH="${WORKDIR}/libg719_decode-master"
		-DUSE_ATRAC9=ON
		-DATRAC9_PATH="${WORKDIR}/LibAtrac9-master"
		-DUSE_CELT=ON
		-DCELT_0061_PATH="${WORKDIR}/celt-0.6.1"
		-DCELT_0110_PATH="${WORKDIR}/celt-0.11.0"
		-DUSE_SPEEX=ON
	)

	cmake_src_configure
}

src_compile() {
	cmake_build vgmstream_cli
}

src_install() {
	dobin "${BUILD_DIR}/cli/vgmstream-cli"
	einstalldocs
}
