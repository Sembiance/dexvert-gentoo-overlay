EAPI=8

DESCRIPTION="FreeDOS plus-plus, 64bit DOS"
HOMEPAGE="https://github.com/stsp/fdpp"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-libs/thunk_gen
	sys-devel/clang
	dev-lang/nasm-segelf
	sys-devel/bison
	>=dev-build/autoconf-2.57"

src_prepare() {
	sed -i "s:/usr/local:/usr:" fdpp/defs.mak || die
	sed -i "s:/usr/local:/usr:" subprojects/libfdpp/defs.mak || die
	sed -i "s|'../parsers'|'parsers'|g" subprojects/kernel/meson.build || die

	eapply_user
}

src_configure() {
	export CC=${CHOST}-clang
	export CXX=${CHOST}-clang++

	mkdir build
	chmod +x configure.meson
	./configure.meson --prefix="${D}"/usr build
}

src_compile() {
	meson compile --verbose -C build
}

src_install() {
	meson install -C build
}
