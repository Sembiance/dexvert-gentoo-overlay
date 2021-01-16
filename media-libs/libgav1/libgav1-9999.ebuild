EAPI=7

inherit git-r3 cmake-utils

DESCRIPTION="AV1 decoder library from Google"
HOMEPAGE="https://chromium.googlesource.com/codecs/${PN}/"
EGIT_REPO_URI="https://chromium.googlesource.com/codecs/${PN}"

LICENSE="APACHE-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

RESTRICT="mirror test network-sandbox"

src_prepare() {
	mkdir third_party
	cd third_party
	git clone https://github.com/abseil/abseil-cpp.git
	cd ..
	
	cmake-utils_src_prepare

	default
}

src_configure() {
    local mycmakeargs=(
        "-DLIBGAV1_ENABLE_TESTS=false"
    )

    cmake-utils_src_configure
}
