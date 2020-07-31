EAPI=7

inherit git-r3 cmake-utils
DESCRIPTION="AV1 image file format decoder/encoder library"
HOMEPAGE="https://github.com/AOMediaCodec/${PN}"
EGIT_REPO_URI="https://github.com/AOMediaCodec/${PN}.git"

LICENSE="libavif-LICENSE"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="media-libs/dav1d
	media-libs/libaom
	media-video/rav1e"
RDEPEND="${DEPEND}"

RESTRICT="mirror"

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
