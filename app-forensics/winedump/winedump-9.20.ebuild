EAPI=8

DESCRIPTION="CLI tool from wine that can dump info about an exe or dll"
HOMEPAGE="https://www.winehq.org/"
LICENSE="LGPL-2.1"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/wine-${PV}.tar.xz"
S="${WORKDIR}/wine-${PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_configure() {
	# we need to genereate config.h and tools/winedump/Makefile
	./configure  --without-freetype
}

src_compile() {
	cd tools/winedump
	emake
}

src_install() {
	dobin tools/winedump/winedump
	mv tools/winedump/winedump.man tools/winedump/winedump.1
	doman tools/winedump/winedump.1
}
