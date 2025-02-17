EAPI=8

DESCRIPTION="CLI tool that converts Stardent AVS X files to TGA"
HOMEPAGE="https://paulbourke.net/dataformats/avs_x/x2tga.c"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	gcc -o x2tga x2tga.c
}

src_install() {
	dobin x2tga
}
