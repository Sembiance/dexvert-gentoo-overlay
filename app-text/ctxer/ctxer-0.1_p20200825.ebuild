EAPI=7

DESCRIPTION="Decompresses Softdisk Compressed files"
HOMEPAGE="https://git.fsfe.org/art1pirat/ctxer"
LICENSE="GPL-3"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	cd src
    gcc -o ctx_decompress ctx_decompress.c
	gcc -o ctx_compress ctx_compress.c
}

src_install() {
    dobin src/ctx_decompress
	dobin src/ctx_compress
}
