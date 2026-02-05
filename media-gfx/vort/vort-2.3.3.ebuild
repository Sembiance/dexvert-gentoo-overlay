EAPI=8

inherit autotools

DESCRIPTION="A very ordinary rendering tool-kit"
HOMEPAGE="https://ftp.gwdg.de/pub/misc/grafik/vogl/vort.tar.gz"
LICENSE="GPL-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.bz2"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

BDEPEND="sys-devel/gcc:13"

src_compile() {
	make linux
	cd old
	gcc-13 -I../lib/ -o conv conv.c oldimio.c ../lib/libvort.a
}

src_install() {
	cd tools
	dobin vort2ppm
	dobin vort2pcx
	dobin vortinfo
	cd ../old
	mv conv vortconv
	dobin vortconv
}
