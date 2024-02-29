EAPI=8

inherit netsurf

DESCRIPTION="decoding library for the GIF image file format, written in C"
HOMEPAGE="https://download.netsurf-browser.org/libs/releases/"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}-src.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

BDEPEND="
    >=dev-build/netsurf-buildsystem-1.7-r1
    virtual/pkgconfig"

src_prepare() {
    default
    sed -e '1i#pragma GCC diagnostic ignored "-Wimplicit-fallthrough"' \
        -i src/lzw.c || die
}

_emake() {
    netsurf_define_makeconf
    emake "${NETSURF_MAKECONF[@]}" COMPONENT_TYPE=lib-shared $@
}

src_compile() {
    _emake
}

src_install() {
    _emake DESTDIR="${D}" install
}
