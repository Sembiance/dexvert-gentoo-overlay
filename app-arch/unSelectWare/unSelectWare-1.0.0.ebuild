EAPI=8

DESCRIPTION="Decompresses SelectWare Archives"
HOMEPAGE="https://moddingwiki.shikadi.net/wiki/SelectWare_Archive"
LICENSE="Apache-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
    gcc -o unSelectWare unSelectWare.c
}

src_install() {
    dobin unSelectWare
}
