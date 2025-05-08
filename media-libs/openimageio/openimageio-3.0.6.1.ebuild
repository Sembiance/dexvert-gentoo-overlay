EAPI=8

PYTHON_COMPAT=( python3_{10..13} )

inherit cmake flag-o-matic python-single-r1

DESCRIPTION="A library for reading and writing images"
HOMEPAGE="https://github.com/AcademySoftwareFoundation/OpenImageIO/releases"
LICENSE="Apache-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/OpenImageIO-${PV}.tar.gz"
S="${WORKDIR}/OpenImageIO-${PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

X86_CPU_FEATURES=(
	aes:aes sse2:sse2 sse3:sse3 ssse3:ssse3 sse4_1:sse4.1 sse4_2:sse4.2
	avx:avx avx2:avx2 avx512f:avx512f f16c:f16c
)
CPU_FEATURES=( "${X86_CPU_FEATURES[@]/#/cpu_flags_x86_}" )

IUSE="${CPU_FEATURES[*]%:*}"

BDEPEND="app-arch/unzip"
RDEPEND="
	dev-libs/boost:=
	dev-cpp/robin-map
	dev-libs/libfmt:=
	dev-libs/pugixml:=
	>=media-libs/libheif-1.13.0:=
	media-libs/libjpeg-turbo:=
	media-libs/libpng:0=
	>=media-libs/libwebp-0.2.1:=
	>=dev-libs/imath-3.1.2-r4:=
	>=media-libs/opencolorio-2.1.1-r4:=
	>=media-libs/openexr-3:0=
	media-libs/tiff:=
	sys-libs/zlib:=
	sci-libs/dcmtk
	media-video/ffmpeg
	sci-libs/cfitsio
	media-libs/giflib
	>=media-libs/openjpeg-2.0
	${PYTHON_DEPS}
	$(python_gen_cond_dep '
		dev-libs/boost:=[python,${PYTHON_USEDEP}]
		dev-python/numpy[${PYTHON_USEDEP}]
		dev-python/pybind11[${PYTHON_USEDEP}]
	')
	media-libs/libraw
	media-libs/freetype"
DEPEND="${RDEPEND}"

PATCHES=( "${FILESDIR}/${PN}-2.5.12.0-heif-find-fix.patch" )

pkg_setup() {
	python-single-r1_pkg_setup
}

src_prepare() {
	cmake_src_prepare
	cmake_comment_add_subdirectory src/fonts
}

src_configure() {
	# Build with SIMD support
	local cpufeature
	local mysimd=()
	for cpufeature in "${CPU_FEATURES[@]}"; do
		use "${cpufeature%:*}" && mysimd+=("${cpufeature#*:}")
	done

	# If no CPU SIMDs were used, completely disable them
	[[ -z ${mysimd[*]} ]] && mysimd=("0")

	local mycmakeargs=(
		-DVERBOSE="yes"
		-DINTERNALIZE_FMT="no"
		# -DALWAYS_PREFER_CONFIG="yes"
		# -DGLIBCXX_USE_CXX11_ABI="yes"
		# -DTEX_BATCH_SIZE="8" # TODO AVX512 -> 16
		-DSTOP_ON_WARNING="OFF"

		-DCMAKE_CXX_STANDARD="17"
		-DDOWNSTREAM_CXX_STANDARD="17"

		-DCMAKE_UNITY_BUILD_MODE="BATCH"
		-DUNITY_SMALL_BATCH_SIZE="$(nproc)"

		-DBUILD_DOCS="no"
		-DBUILD_OIIOUTIL_ONLY="no"
		-DBUILD_TESTING="no"

		-DINSTALL_FONTS="OFF"
		-DINSTALL_DOCS="no"

		-DENABLE_DCMTK="yes"
		-DENABLE_FFmpeg="yes"
		-DENABLE_FITS="yes"
		-DENABLE_FREETYPE="yes"
		-DENABLE_GIF="yes"
		-DENABLE_LibRaw="yes"
		-DENABLE_Nuke="no" # not in Gentoo
		-DENABLE_OpenCV="no"
		-DENABLE_OpenJPEG="yes"
		-DENABLE_OpenVDB="no"
		-DENABLE_PTEX="no"
		-DENABLE_TBB="no"
		-DENABLE_WEBP="no"

		-DOIIO_BUILD_TOOLS="yes"
		-DOIIO_BUILD_TESTS="no"
		-DOIIO_DOWNLOAD_MISSING_TESTDATA="no"

		-DUSE_CCACHE="no"
		-DUSE_EXTERNAL_PUGIXML="yes"
		# -DUSE_LIBCPLUSPLUS="yes"
		-DUSE_R3DSDK="no" # not in Gentoo
		-DUSE_PYTHON="yes"
		-DPYTHON_VERSION=${EPYTHON#python}
		-DPYTHON_SITE_DIR=$(python_get_sitedir)
		-DUSE_QT="no"
		-DUSE_SIMD="$(local IFS=','; echo "${mysimd[*]}")"
	)

	cmake_src_configure
}

src_install() {
	cmake_src_install

	# remove Windows loader file
	rm "${D}$(python_get_sitedir)/__init__.py" || die
}
