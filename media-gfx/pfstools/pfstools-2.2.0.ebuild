EAPI=8

inherit cmake

DESCRIPTION="A set of programs for manipulating and viewing HDR images and video frames"
HOMEPAGE="https://sourceforge.net/projects/pfstools/files/pfstools/"
LICENSE="LGPL-2.1"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tgz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="
	media-libs/libexif
	sci-libs/fftw
	sci-libs/gsl
	>=media-gfx/imagemagick-7.0
	media-libs/netpbm
	>=media-libs/openexr-1.0:0=
	media-libs/tiff
	!media-gfx/pfscalibration
	!media-gfx/pfstmo"
DEPEND="${DEPEND}"

# NOTE: If I need more patches in the future, check out: https://build.opensuse.org/package/show/openSUSE:Factory/pfstools
PATCHES=( "${FILESDIR}/imagemagick-7.patch" "${FILESDIR}/clamp-overload.patch" )

src_configure() {
	local mycmakeargs=(
		-DWITH_MATLAB=OFF
		-DWITH_ImageMagick=ON
		-DWITH_FFTW=ON
		-DWITH_GSL=ON
		-DWITH_NetPBM=ON
		-DWITH_Octave=OFF
		-DWITH_OpenCV=OFF
		-DWITH_OpenEXR=ON
		-DWITH_pfsglview=OFF
		-DWITH_QT=OFF
		-DBUILD_SHARED_LIBS=ON
		-DWITH_TIFF=ON
	)
	
	cmake_src_configure || die
}

src_install() {
	cmake_src_install

	dobin "${FILESDIR}"/pfsconvert
}
