# dexvert relies on p7zip behavior instead of the other 7z and p7zip has now been masked for removal from gentoo
EAPI=8

inherit multilib toolchain-funcs wrapper xdg

DESCRIPTION="Port of 7-Zip archiver for Unix"
HOMEPAGE="https://github.com/p7zip-project/p7zip"
LICENSE="LGPL-2.1"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}-${PV}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="dev-libs/libnatspec"
DEPEND="${RDEPEND}"
BDEPEND="dev-lang/yasm"

PATCHES=(
	"${FILESDIR}"/${P}-unit64.patch
	"${FILESDIR}"/${P}-natspec.patch
)

src_prepare() {
	default

	sed -i '/^LOCAL_LIBS/s/$/ -lnatspec/' makefile.* || die
	sed "s:PRE_COMPILED_HEADER=StdAfx.h.gch:PRE_COMPILED_HEADER=:g" -i makefile.* || die
	sed \
		-e 's|-m32 ||g' \
		-e 's|-m64 ||g' \
		-e 's|-pipe||g' \
		-e "/[ALL|OPT]FLAGS/s|-s||;/OPTIMIZE/s|-s||" \
		-e "/CFLAGS=/s|=|+=|" \
		-e "/CXXFLAGS=/s|=|+=|" \
		-i makefile* || die

	sed \
		-e '/Rar/d' \
		-e '/RAR/d' \
		-i makefile* CPP/7zip/Bundles/Format7zFree/makefile || die
	rm -r CPP/7zip/Compress/Rar || die

	cp makefile.linux_amd64_asm makefile.machine || die
}

src_compile() {
	emake CC="$(tc-getCC)" CXX="$(tc-getCXX)" all3
}

src_install() {
	# these wrappers cannot be symlinks, p7zip should be called with full path
	make_wrapper 7zr /usr/$(get_libdir)/p7zip/7zr
	make_wrapper 7za /usr/$(get_libdir)/p7zip/7za
	make_wrapper 7z /usr/$(get_libdir)/p7zip/7z

	dobin contrib/gzip-like_CLI_wrapper_for_7z/p7zip
	doman contrib/gzip-like_CLI_wrapper_for_7z/man1/p7zip.1

	exeinto /usr/$(get_libdir)/p7zip
	doexe bin/7z bin/7za bin/7zr bin/7zCon.sfx
	doexe bin/*$(get_modname)
	doman man1/7z.1 man1/7za.1 man1/7zr.1

	dodoc ChangeLog README TODO
	dodoc DOC/*.txt
	docinto html
	dodoc -r DOC/MANUAL/.
}
