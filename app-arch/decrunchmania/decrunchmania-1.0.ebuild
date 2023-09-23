EAPI=8

DESCRIPTION="Command line tool to uncompress compressed CrunchMania files"
HOMEPAGE="http://aminet.net/package/util/pack/decrunchmania-mos"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.bz2"
S="${WORKDIR}/decrunchmania"

DEPEND="app-arch/lha"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	gcc -o decrmtool src/decrunchmania.c src/decrmtool.c
}

src_install() {
	dobin decrmtool
}
