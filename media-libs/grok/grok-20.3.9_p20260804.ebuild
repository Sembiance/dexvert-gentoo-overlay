EAPI=8

CRATES="
	proc-macro2@1.0.106
	quote@1.0.45
	syn@2.0.117
	thiserror-impl@2.0.18
	thiserror@2.0.18
	unicode-ident@1.0.24
"
RUST_MIN_VER="1.85.0"
inherit cmake cargo

DESCRIPTION="World's Leading Open Source JPEG 2000 Codec"
HOMEPAGE="https://github.com/GrokImageCompression/grok"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz
	${CARGO_CRATE_URIS}"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

BDEPEND="sys-devel/gcc:13"
RDEPEND=">=dev-libs/libfmt-11.1.4"
DEPEND="${RDEPEND}"

src_unpack() {
	cargo_src_unpack
}

src_configure() {
    local mycmakeargs=(
        -DBUILD_TESTING=OFF
        -DGRK_BUILD_DOC=OFF
		-DSPDLOG_FMT_EXTERNAL:BOOL=ON
		-DGRK_BUILD_LIBPNG:BOOL=OFF
		-DGRK_BUILD_LCMS2:BOOL=OFF
		-DGRK_BUILD_JPEG:BOOL=OFF
    )
	
	cargo_env cmake_src_configure    
}

src_compile() {
	cargo_env cmake_src_compile
}

src_install() {
	cmake_src_install
}
