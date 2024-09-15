EAPI=8
inherit meson

DESCRIPTION="Fast and colorspace-aware image viewer for Wayland, DRM/KMS, and X11"
HOMEPAGE="https://codeberg.org/kaleido/wuimg"
LICENSE="BSD-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/openjpeg.patch" 
	"${FILESDIR}/exiv2.patch" )

DEPEND="app-arch/libarchive
	media-libs/libepoxy
	media-gfx/exiv2
	dev-libs/icu
	media-libs/lcms
	app-i18n/uchardet
	media-libs/glfw
	media-libs/libavif
	media-libs/flif
	media-libs/giflib
	media-libs/libheif
	media-libs/jbigkit
	virtual/jpeg
	media-libs/openjpeg
	media-libs/libjxl
	media-libs/libpng
	media-libs/liblerc
	media-libs/charls
	media-libs/libraw
	gnome-base/librsvg
	media-libs/tiff
	media-libs/libwebp"
RDEPEND=${DEPEND}
