EAPI=7

DESCRIPTION="Command line tool to uncompress compressed CrunchMania files"
HOMEPAGE="http://aminet.net/package/util/pack/decrunchmania-mos"
SRC_URI="http://aminet.net/util/pack/decrunchmania-mos.lha"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/lha"
RDEPEND=""

RESTRICT="mirror"
S="${WORKDIR}/decrunchmania"

src_compile() {
	gcc -o decrmtool src/decrunchmania.c src/decrmtool.c
}

src_install() {
	dobin decrmtool
}
