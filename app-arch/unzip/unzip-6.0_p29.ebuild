EAPI=8

# I modified app-arch/unzip to support some old copyright encumbered code called USE_SMITH
# Also removed use flags and just compiled straight in and cleaned up other stuff
# The unreduce_full.c file came from: ftp://ftp.info-zip.org/pub/infozip/src/unreduce_full.zip

inherit toolchain-funcs flag-o-matic

MY_PV="${PV//.}"
MY_PV="${MY_PV%_p*}"
MY_P="${PN}${MY_PV}"

DESCRIPTION="unzipper for pkzip-compressed files"
HOMEPAGE="http://infozip.sourceforge.net/UnZip.html"
LICENSE="Info-ZIP"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_P}.tar.gz
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_P}.debian.tar.xz"
S="${WORKDIR}/${MY_P}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="app-arch/bzip2
	dev-libs/libnatspec"
RDEPEND="${DEPEND}"

src_prepare() {
	local deb="${WORKDIR}"/debian/patches
	rm "${deb}"/02-this-is-debian-unzip.patch || die
	eapply "${deb}"/*.patch
	eapply "${FILESDIR}/${PN}-6.0-natspec.patch"
	eapply "${FILESDIR}/unxcfg.patch"
	eapply "${FILESDIR}"/${PN}-6.0-no-exec-stack.patch
	eapply "${FILESDIR}"/${PN}-6.0-format-security.patch
	eapply "${FILESDIR}"/${PN}-6.0-fix-false-overlap-detection-on-32bit-systems.patch
	eapply "${FILESDIR}"/no_message_pause.patch
	sed -i -r \
		-e '/^CFLAGS/d' \
		-e '/CFLAGS/s:-O[0-9]?:$(CFLAGS) $(CPPFLAGS):' \
		-e '/^STRIP/s:=.*:=true:' \
		-e "s:\<CC *= *\"?g?cc2?\"?\>:CC=\"$(tc-getCC)\":" \
		-e "s:\<LD *= *\"?(g?cc2?|ld)\"?\>:LD=\"$(tc-getCC)\":" \
		-e "s:\<AS *= *\"?(g?cc2?|as)\"?\>:AS=\"$(tc-getCC)\":" \
		-e 's:LF2 = -s:LF2 = :' \
		-e 's:LF = :LF = $(LDFLAGS) :' \
		-e 's:SL = :SL = $(LDFLAGS) :' \
		-e 's:FL = :FL = $(LDFLAGS) :' \
		-e "/^#L_BZ2/s:^$(echo .)::" \
		-e 's:$(AS) :$(AS) $(ASFLAGS) :g' \
		unix/Makefile \
		|| die "sed unix/Makefile failed"

	rm -r bzip2 || die
    cp "${FILESDIR}"/unreduce_full.c "${S}"/unreduce.c

	eapply_user
}

src_configure() {
	TARGET="linux_noasm"
	append-cppflags -DNO_LCHMOD -DUSE_BZIP2 -DUNICODE_SUPPORT -DUNICODE_WCHAR -DUTF8_MAYBE_NATIVE -DUSE_ICONV_MAPPING -DLARGE_FILE_SUPPORT -DUSE_SMITH_CODE
}

src_compile() {
	ASFLAGS="${ASFLAGS}" emake -f unix/Makefile ${TARGET}
}

src_install() {
	dobin unzip funzip unzipsfx unix/zipgrep
	dosym unzip /usr/bin/zipinfo
	doman man/*.1
	dodoc BUGS History* README ToDo WHERE
}
