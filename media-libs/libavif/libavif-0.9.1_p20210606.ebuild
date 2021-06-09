EAPI=7

inherit cmake-utils

DESCRIPTION="AV1 image file format decoder/encoder library"
HOMEPAGE="https://github.com/AOMediaCodec/${PN}"
LICENSE="libavif-LICENSE"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/dav1d
	media-libs/libaom
	media-video/rav1e"
RDEPEND="${DEPEND}"

src_configure() {
    local mycmakeargs=(
        "-DAVIF_CODEC_AOM=true"
        "-DAVIF_CODEC_DAV1D=true"
        "-DAVIF_CODEC_RAV1E=true"
        "-DAVIF_BUILD_APPS=true"
		"-DBUILD_SHARED_LIBS=ON"
    )

    cmake-utils_src_configure
}
