EAPI=8

inherit meson

DESCRIPTION="Image loading library"
HOMEPAGE="http://snisurset.net/code/abydos/"
LICENSE="BSD-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.xz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="debug"

PATCHES=( "${FILESDIR}/webp_link.patch"
	"${FILESDIR}/grok.patch"
)

# To debug abydos source, run in the src dir 'meson setup build' and then 'cd build' 'meson compile'
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
	media-libs/grok
	media-libs/libquicktime
	media-libs/openexr
	media-libs/flif
	media-libs/libicns
	media-libs/libjxl
	media-libs/libnsbmp
	media-libs/freeimage
	media-libs/libpgf
	media-libs/openimageio
	media-libs/rlottie
	media-libs/devil
	media-libs/vips
	media-gfx/farbfeld
	dev-libs/efl
	app-text/libgxps
	app-text/libspectre"
RDEPEND=${DEPEND}
