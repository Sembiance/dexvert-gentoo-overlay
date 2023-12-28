EAPI=8

inherit cmake

DESCRIPTION="A set of programs for manipulating and viewing HDR images and video frames"
HOMEPAGE="https://sourceforge.net/projects/pfstools/files/pfstools/"
LICENSE="LGPL-2.1"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tgz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="fftw gsl imagemagick netpbm octave opencv openexr opengl qt5 static-libs tiff"

RDEPEND="
	media-libs/libexif
	fftw? ( sci-libs/fftw )
	gsl? ( sci-libs/gsl )
	imagemagick? ( >=media-gfx/imagemagick-6.0 )
	netpbm? ( media-libs/netpbm )
	octave? ( sci-mathematics/octave )
	opencv? ( media-libs/opencv )
	openexr? ( >=media-libs/openexr-1.0:0= )
	opengl? ( media-libs/freeglut virtual/opengl )
	tiff? ( media-libs/tiff )
	!media-gfx/pfscalibration
	!media-gfx/pfstmo"
DEPEND="${DEPEND}
	qt5? (
		dev-qt/qtgui:5
		dev-qt/qtwidgets:5
	)"

# NOTE: If I need more patches in the future, check out: https://build.opensuse.org/package/show/openSUSE:Factory/pfstools
PATCHES=( "${FILESDIR}/imagemagick-7.patch" "${FILESDIR}/clamp-overload.patch" )

src_configure() {
	local mycmakeargs=(
		-DWITH_MATLAB=OFF
		-DWITH_ImageMagick=$(usex imagemagick)
		-DWITH_FFTW=$(usex fftw)
		-DWITH_GSL=$(usex gsl)
		-DWITH_NetPBM=$(usex netpbm)
		-DWITH_Octave=$(usex octave)
		-DWITH_OpenCV=$(usex opencv)
		-DWITH_OpenEXR=$(usex openexr)
		-DWITH_pfsglview=$(usex opengl)
		-DWITH_QT=$(usex qt5)
		-DBUILD_SHARED_LIBS=$(usex !static-libs)
		-DWITH_TIFF=$(usex tiff)
	)
	
	cmake_src_configure || die
}

src_install() {
	cmake_src_install


	dobin "${FILESDIR}"/pfsconvert
}
