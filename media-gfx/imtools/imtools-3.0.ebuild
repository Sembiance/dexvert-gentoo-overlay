EAPI=8

DESCRIPTION="Various tools for manipulating images"
HOMEPAGE="ftp://ftp.sdsc.edu/pub/sdsc/graphics/imtools"
LICENSE="GPL-2"

SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}/imtools/imtools"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	cd libsdsc
	emake
	cd ../libim
	make
	cd ../tools
	make
}

src_install() {
	cd tools/linux
	
	# Lots of other tools available, but we only really care about these
	dobin imconv
	dobin imfile
	dobin imformats
	dobin imsplit
}
