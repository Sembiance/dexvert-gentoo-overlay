EAPI=7

DESCRIPTION="VIPS Image Processing Library"
HOMEPAGE="https://libvips.github.io/libvips/"
LICENSE="LGPL-2.1"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="+orc debug exif fits fftw graphicsmagick imagemagick jpeg lcms matio openexr openslide png svg static-libs tiff webp"

RDEPEND="
	orc? ( >=dev-lang/orc-0.4.11 )
	debug? ( dev-libs/dmalloc )
	>=dev-libs/glib-2.6:2
	dev-libs/libxml2
	sys-libs/zlib
	>=x11-libs/pango-1.8
	fftw? ( sci-libs/fftw:3.0= )
	imagemagick? (
		graphicsmagick? ( media-gfx/graphicsmagick )
		!graphicsmagick? ( media-gfx/imagemagick )
	)
	lcms? ( media-libs/lcms )
	svg? ( gnome-base/librsvg )
	matio? ( >=sci-libs/matio-1.3.4 )
	openexr? ( >=media-libs/openexr-1.2.2 )
	exif? ( >=media-libs/libexif-0.6 )
	tiff? ( media-libs/tiff:0= )
	jpeg? ( virtual/jpeg:0= )
	fits? ( sci-libs/cfitsio )
	png? ( >=media-libs/libpng-1.2.9:0= )
	webp? ( media-libs/libwebp )
	openslide? ( media-libs/openslide )"

DEPEND="${RDEPEND}"

src_configure() {
	local magick="--without-magick";
	use imagemagick && magick="--with-magickpackage=MagickCore"
	use graphicsmagick && magick="--with-magickpackage=GraphicsMagick"

	econf \
		${magick} \
		$(use_enable debug) \
		$(use_with debug dmalloc) \
		$(use_with orc) \
		$(use_with fftw) \
		$(use_with lcms) \
		$(use_with openexr OpenEXR) \
		$(use_with matio ) \
		$(use_with exif libexif) \
		$(use_with png) \
		$(use_with svg rsvg) \
		$(use_with tiff) \
		$(use_with fits cfitsio) \
		$(use_with jpeg) \
		$(use_with webp libwebp) \
		$(use_with openslide) \
		$(use_enable static-libs static)
}
