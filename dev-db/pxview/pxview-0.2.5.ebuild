EAPI=7

DESCRIPTION="Library to read and write Paradox DB files"
HOMEPAGE="https://sourceforge.net/projects/pxlib/files/pxlib/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}_${PV}.orig.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-libs/pxlib"
RDEPEND="${DEPEND}"

# Sadly while configure and make works on lostcrag, it fails on chatsubo, so we just compile by hand

src_configure() {
	echo "no configure phase, broken"
}

src_compile() {
	cd src
	echo "#define VERSION 0.25" > config.h
    gcc -o pxview -lpx -lm main.c
}

src_install() {
    dobin src/pxview
}
