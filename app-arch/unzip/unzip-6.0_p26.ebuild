EAPI=8

# I modified app-arch/unzip to support some old copyright encumbered code called USE_SMITH
# The unreduce_full.c file came from: ftp://ftp.info-zip.org/pub/infozip/src/unreduce_full.zip

inherit toolchain-funcs flag-o-matic

MY_PV="${PV//.}"
MY_PV="${MY_PV%_p*}"
MY_P="${PN}${MY_PV}"

DESCRIPTION="unzipper for pkzip-compressed files"
HOMEPAGE="http://infozip.sourceforge.net/UnZip.html"
LICENSE="Info-ZIP"
SRC_URI="mhttps://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_P}.tar.gz
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}_${PV/_p/-}.debian.tar.xz"

SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ia64 m68k ~mips ppc ppc64 ~riscv s390 sparc x86 ~x86-linux"
IUSE="bzip2 natspec unicode smith"

DEPEND="bzip2? ( app-arch/bzip2 )
	natspec? ( dev-libs/libnatspec )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	local deb="${WORKDIR}"/debian/patches
	rm "${deb}"/02-this-is-debian-unzip.patch || die
	eapply "${deb}"/*.patch

	eapply "${FILESDIR}"/${PN}-6.0-no-exec-stack.patch
	eapply "${FILESDIR}"/${PN}-6.0-format-security.patch
	eapply "${FILESDIR}"/${PN}-6.0-fix-false-overlap-detection-on-32bit-systems.patch
	eapply "${FILESDIR}"/no_message_pause.patch
	use natspec && eapply "${FILESDIR}/${PN}-6.0-natspec.patch" #275244
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
		-e "/^#L_BZ2/s:^$(use bzip2 && echo .)::" \
		-e 's:$(AS) :$(AS) $(ASFLAGS) :g' \
		unix/Makefile \
		|| die "sed unix/Makefile failed"

	# Delete bundled code to make sure we don't use it.
	rm -r bzip2 || die

    if use smith ; then
        cp "${FILESDIR}"/unreduce_full.c "${S}"/unreduce.c
    fi

	eapply_user
}

src_configure() {
	case ${CHOST} in
		i?86*-*linux*)       TARGET="linux_asm" ;;
		*linux*)             TARGET="linux_noasm" ;;
		i?86*-*bsd* | \
		i?86*-dragonfly*)    TARGET="freebsd" ;; # mislabelled bsd with x86 asm
		*bsd* | *dragonfly*) TARGET="bsd" ;;
		*-darwin*)           TARGET="macosx" ;;
		*-cygwin*)           TARGET="cygwin" ;;
		*) die "Unknown target; please update the ebuild to handle ${CHOST}	" ;;
	esac

	[[ ${CHOST} == *linux* ]] && append-cppflags -DNO_LCHMOD
	use bzip2 && append-cppflags -DUSE_BZIP2
	use unicode && append-cppflags -DUNICODE_SUPPORT -DUNICODE_WCHAR -DUTF8_MAYBE_NATIVE -DUSE_ICONV_MAPPING
	append-cppflags -DLARGE_FILE_SUPPORT #281473
	use smith && append-cppflags -DUSE_SMITH_CODE
}

src_compile() {
	ASFLAGS="${ASFLAGS} $(get_abi_var CFLAGS)" \
		emake -f unix/Makefile ${TARGET}
}

src_install() {
	dobin unzip funzip unzipsfx unix/zipgrep
	dosym unzip /usr/bin/zipinfo
	doman man/*.1
	dodoc BUGS History* README ToDo WHERE
}
