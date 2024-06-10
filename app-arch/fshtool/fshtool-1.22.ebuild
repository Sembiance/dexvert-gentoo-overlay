EAPI=8

DESCRIPTION="Command line tool to uncompress FSH archives"
HOMEPAGE="http://www.math.polytechnique.fr/cmat/auroux/nfs/"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	gcc -o fshtool $CFLAGS fshtool.c
}

src_install() {
	dobin fshtool
	dodoc readme.txt
}
