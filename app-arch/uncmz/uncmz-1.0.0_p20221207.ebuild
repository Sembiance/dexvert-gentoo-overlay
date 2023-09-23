EAPI=8

inherit go-module

DESCRIPTION="Command line tool to uncompress compressed CMZ files"
HOMEPAGE="https://github.com/sourcekris/uncmz"
LICENSE="MIT"
EGO_SUM=(
	"github.com/JoshVarga/blast v0.0.0-20210808061142-eadad17358e8"
	"github.com/JoshVarga/blast v0.0.0-20210808061142-eadad17358e8/go.mod"
	)
go-module_set_globals
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip
	${EGO_SUM_SRC_URI}"
S="${WORKDIR}/${PN}-main"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin uncmz
}
