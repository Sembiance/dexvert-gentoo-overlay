EAPI=8

inherit toolchain-funcs

DESCRIPTION="Converts Apple DMG files to standard HFS+ images"
HOMEPAGE="http://vu1tur.eu.org/tools"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
RESTRICT="mirror test"

RDEPEND="app-arch/bzip2
	sys-libs/zlib
	dev-libs/openssl:0="
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}"/${P}-openssl11.patch #674168
)

src_prepare() {
	default
	sed -i -e 's:-s:$(LDFLAGS):g' Makefile || die "sed failed"
}

src_compile() {
	tc-export CC
	emake CFLAGS="${CFLAGS}"
}

src_install() {
	dobin dmg2img vfdecrypt
	dodoc README
	doman vfdecrypt.1
}
