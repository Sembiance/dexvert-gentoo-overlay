EAPI=8
inherit cmake

DESCRIPTION="World's Leading Open Source JPEG 2000 Codec"
HOMEPAGE="https://github.com/GrokImageCompression/grok"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

BDEPEND="sys-devel/gcc:13"

src_configure() {
    local mycmakeargs=(
        -DBUILD_TESTING=OFF
        -DGRK_BUILD_DOC=OFF
		-DGRK_BUILD_LIBPNG:BOOL=OFF
		-DGRK_BUILD_LCMS2:BOOL=OFF
		-DGRK_BUILD_JPEG:BOOL=OFF
    )
    
    cmake_src_configure || die
}
