EAPI=7

inherit meson

DESCRIPTION="Image loading library"
HOMEPAGE="http://snisurset.net/code/${PN}/"
SRC_URI="http://snisurset.net/code/${PN}/files/${PN}-${PV}.tar.xz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="debug"

DEPEND="x11-libs/cairo
	media-libs/libnsgif
	media-libs/tiff
	app-text/djvu
	media-gfx/ansilove
	media-gfx/imagemagick
	media-libs/libheif
	media-libs/netpbm
	app-text/poppler
	media-libs/libpng
	gnome-base/librsvg
	media-libs/libraw
	media-libs/libwebp
	media-libs/libwmf
	media-libs/gegl
	media-libs/gd
	media-libs/libquicktime
	media-libs/openexr
	media-libs/flif
	media-libs/libicns
	media-libs/libnsbmp
	media-libs/freeimage
	media-libs/libpgf
	media-libs/openimageio
	media-libs/rlottie
	media-libs/devil
	media-libs/vips
	dev-libs/efl
	app-text/libspectre"
RDEPEND=${DEPEND}

RESTRICT="mirror test"
