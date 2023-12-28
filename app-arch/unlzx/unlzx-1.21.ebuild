EAPI=8

DESCRIPTION="Command line tool to uncompress compressed LZX files"
HOMEPAGE="http://xavprods.free.fr/lzx/"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}.c.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	gcc -o unlzx unlzx.c
}

src_install() {
	dobin unlzx
}
