EAPI=8

inherit toolchain-funcs

DESCRIPTION="ffmpeg fork that has some additional format support and improvements"
HOMEPAGE="https://github.com/librempeg/librempeg/"
LICENSE="AGPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-libs/libxml2
	media-libs/libvorbis
	media-libs/libwebp
	media-libs/x264
	media-libs/xvid
	media-sound/lame"
RDEPEND=${DEPEND}

src_configure() {
    local conf=( "${S}"/configure ) # not autotools-based
	local prefix=${EPREFIX}/usr
    conf+=(
        --prefix="${prefix}"
        --libdir="${prefix}"/$(get_libdir)
        --shlibdir="${prefix}"/$(get_libdir)
        --mandir="${prefix}"/share/man
        --docdir="${EPREFIX}"/usr/share/doc/${PF}/html

        --ar="$(tc-getAR)"
        --cc="$(tc-getCC)"
        --cxx="$(tc-getCXX)"
        --nm="$(tc-getNM)"
        --pkg-config="$(tc-getPKG_CONFIG)"
        --ranlib="$(tc-getRANLIB)"
        --disable-stripping

        # overrides users' -g/-O, let *FLAGS handle these
        --disable-debug
        --disable-optimizations
        --optflags=' '

		# ensure I build a totally self-contained binary as to not conflict with ffmpeg and only build ffmpeg
        --disable-shared
        --enable-static
		--disable-debug
		--disable-ffplay

        # basic defaults that should not really need a USE
        --enable-iconv
        --enable-pic
        --disable-podpages
        --disable-txtpages

        # disabled primarily due to being unpackaged
        --disable-decklink
        --disable-libaribcaption
        --disable-libdavs2
        --disable-libklvanc
        --disable-libmysofa
        --disable-liboapv
        --disable-libopenvino
        --disable-libshine
        --disable-libtls
        --disable-libuavs3d
        --disable-libxavs
        --disable-libxavs2
        --disable-libxevd
        --disable-libxeve
        --disable-pocketsphinx
        --disable-rkmpp
        --disable-vapoursynth
        # disabled for other or additional reasons
        --disable-cuda-nvcc # prefer cuda-llvm for less issues
        --disable-libcelt # obsolete (bug #664158)
        --disable-libglslang # prefer USE=shaderc (bug #918989,#920283,#922333)
        --disable-liblensfun # https://trac.ffmpeg.org/ticket/9112 (abandoned?)
        --disable-libmfx # prefer libvpl for USE=qsv
        --disable-librist # librist itself needs attention first (bug #822012)
        --disable-libtensorflow # causes headaches, and is gone
        --disable-libtorch # support may need special attention (bug #936127)
        --disable-mbedtls # messy with slots, tests underlinking issues
        --disable-mmal # prefer USE=soc
        --disable-omx # unsupported (bug #653386)
        --disable-omx-rpi # ^

		--enable-gpl
		--enable-agpl
		--enable-nonfree
		
		--enable-libmp3lame
		--enable-libx264
		--enable-libvorbis
		--enable-libwebp
		--enable-libxvid
		--enable-libxml2
    )

    einfo "${conf[*]}"
    "${conf[@]}" || die "configure failed, see ${BUILD_DIR}/ffbuild/config.log"
}

src_install() {
	mv ffmpeg librempeg
	mv ffprobe librempegprobe

	dobin librempeg
	dobin librempegprobe
}
