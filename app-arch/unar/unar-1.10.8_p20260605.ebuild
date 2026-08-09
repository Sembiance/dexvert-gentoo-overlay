EAPI=8

inherit bash-completion-r1

DESCRIPTION="Unpacker for various archiving formats, e.g. rar v3"
HOMEPAGE="https://unarchiver.c3.cx/"
LICENSE="LGPL-2.1"
SRC_URI="
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/XADMaster-${PV}.zip
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/universal-detector-1.1_p20220919.zip"
S="${WORKDIR}/XADMaster-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="
	app-arch/bzip2
	dev-libs/icu
	gnustep-base/gnustep-base
	media-sound/wavpack
	virtual/zlib"
DEPEND="
	${RDEPEND}
	gnustep-base/gnustep-make[native-exceptions]"
BDEPEND="sys-devel/gcc[objc]"

PATCHES=(
	"${FILESDIR}"/${PN}-Wint-conversion.patch
	"${FILESDIR}"/${PN}-list-formats.patch
	"${FILESDIR}"/${PN}-lhwarp-legacy-checksum.patch
	"${FILESDIR}"/${PN}-amipack-gcc16.patch
	"${FILESDIR}"/${PN}-retain-checksum-output.patch
)

src_prepare() {
	default
	# avoid jobserver warning "make[1]: warning: jobserver unavailable: using -j1"
	sed -i -e 's:make:$(MAKE):g' Makefile.linux || die
	mv "${WORKDIR}/universal-detector-master" "${WORKDIR}/UniversalDetector" || die
}

src_compile() {
	emake -f Makefile.linux \
		AR="$(tc-getAR)" \
		CC="$(tc-getCC)" \
		CXX="$(tc-getCXX)" \
		OBJCC="$(tc-getCC)" \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		OBJCFLAGS="${CFLAGS}" \
		LD="$(tc-getCXX)" \
		LDFLAGS="-Wl,--whole-archive -fexceptions -fgnu-runtime ${LDFLAGS}"
}

src_install() {
	dobin {ls,un}ar
	doman Extra/{ls,un}ar.1
}
