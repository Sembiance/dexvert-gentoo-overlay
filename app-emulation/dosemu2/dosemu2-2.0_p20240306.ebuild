EAPI=8

inherit autotools

DESCRIPTION="Run DOS programs under linux"
HOMEPAGE="https://github.com/dosemu2/dosemu2/tree/devel"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="app-emulation/fdpp
	!app-emulation/dosemu"
DEPEND="${RDEPEND}
	media-libs/alsa-lib
	sys-libs/slang
	sys-devel/clang
	sys-devel/dj64
	dev-libs/json-c
	sys-devel/bison
	x11-libs/libX11
	x11-libs/libXxf86vm
	x11-libs/libXau
	x11-libs/libXext
	x11-libs/libXdmcp
	x11-apps/xset
	x11-apps/xlsfonts
	x11-apps/bdftopcf
	x11-apps/mkfontscale
	media-libs/libsdl2[sound,video]
	>=dev-build/autoconf-2.57"

src_prepare() {
	default

	replace-flags -O[3-9] -O2

	chmod +x getversion
	chmod +x *.sh
	chmod +x scripts/*
	./autogen.sh
}

src_configure() {
	local myplugins="extra_charsets,term,dosdrv,doscmd,periph,charsets,console,modemu,alsa,fdpp,X,sdl"
	#use experimental && myconf+=" --enable-experimental --enable-ubsan --disable-system-wa"
	econf --docdir=${EPREFIX}/usr/share/doc/${PF} \
		--with-fdpp-lib-dir=/usr/lib/fdpp \
		--with-fdpp-include-dir=/usr/include \
		--with-fdpp-pkgconf-dir=/usr/lib/pkgconfig \
		--enable-plugins=${myplugins}
}
