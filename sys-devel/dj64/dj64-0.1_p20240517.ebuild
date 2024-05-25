EAPI=8

DESCRIPTION="djgpp-compatible 64bit tool-chain"
HOMEPAGE="https://github.com/stsp/dj64dev"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-util/ctags
	dev-libs/thunk_gen
	sys-devel/clang"

src_prepare() {
	default

	chmod +x src/libc/dj64/parsers/gen_asms.sh
	chmod +x src/libc/dj64/parsers/mkproto.sh
	sed -i "s:/usr/local:/usr:" makefile || die
	sed -i "s:\$(PREFIX)/lib:\$(PREFIX)/lib64:" makefile || die
}

src_compile() {
	make all
}
