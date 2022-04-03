EAPI=7
inherit autotools

DESCRIPTION="A library to play a wide range of module formats"
HOMEPAGE="https://sourceforge.net/p/mikmod/mikmod/ci/master/tree/"
LICENSE="LGPL-2+ LGPL-2.1"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="debug"

src_prepare() {
    default
    eautoreconf
}

src_configure() {
	econf	--enable-alsa \
		--enable-threads \
		$(use_enable debug) \
		--disable-pulseaudio \
		--disable-nas \
		--disable-openal \
		--disable-oss \
		--disable-sdl \
		--disable-sdl2 \
		--disable-debug \
		--disable-static \
		--disable-dl \
		--enable-simd
}
