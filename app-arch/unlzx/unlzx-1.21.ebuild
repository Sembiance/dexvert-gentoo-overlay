EAPI=7

DESCRIPTION="Command line tool to uncompress compressed LZX files"
HOMEPAGE="http://xavprods.free.fr/lzx/"
SRC_URI="http://aminet.net/misc/unix/unlzx.c.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

RESTRICT="mirror"
S="${WORKDIR}"

src_compile() {
	gcc -o unlzx unlzx.c
}

src_install() {
	dobin unlzx
}
