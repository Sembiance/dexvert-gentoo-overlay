EAPI=8

DESCRIPTION="CLI tool that converts Asylum file formats"
HOMEPAGE="http://asylum.acornarcade.com/a_nobrainer.php"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	gcc -o nobrainer source.c
}

src_install() {
	dobin nobrainer
}
