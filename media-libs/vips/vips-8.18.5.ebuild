EAPI=8

inherit meson

DESCRIPTION="VIPS Image Processing Library"
HOMEPAGE="https://github.com/libvips/libvips/releases"
LICENSE="LGPL-2.1"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.xz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="+orc exif fits fftw jpeg lcms matio openexr openslide png svg tiff webp"

RDEPEND="
	orc? ( >=dev-lang/orc-0.4.11 )
	>=dev-libs/glib-2.6:2
	dev-libs/libxml2
	sys-libs/zlib
	>=x11-libs/pango-1.8
	fftw? ( sci-libs/fftw:3.0= )
	media-gfx/imagemagick
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
    local emesonargs=(
        -D cache=true
        -D module=true
        -D thread=true
        -D example=true

        -D cmake=false
    )

	local emesonargs=(
		$(meson_feature fits cfitsio)
		$(meson_feature exif exif)
		$(meson_feature fftw fftw)
		$(meson_feature jpeg jpeg)
		$(meson_feature lcms lcms)
		-Dmagick=enabled
		-Dmagick-package=MagickCore
		$(meson_feature matio matio)
		$(meson_feature openexr openexr)
		$(meson_feature openslide openslide)
		$(meson_feature orc orc)
		$(meson_feature png png)
		$(meson_feature svg rsvg)
		$(meson_feature tiff tiff)
		$(meson_feature webp webp)
	)

    meson_src_configure
}
