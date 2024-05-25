EAPI=8

DESCRIPTION="CLI tool that converts FM-TOWNS .hel files to TIFF"
HOMEPAGE="https://discmaster.textfiles.com/browse/657/FM%20Towns%20Free%20Software%20Collection%2010.iso/t_os/tool/hel2tif"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	pwd
	gcc -o hel2tif hel2tif.c htmain.c
}

src_install() {
	dobin hel2tif
}
