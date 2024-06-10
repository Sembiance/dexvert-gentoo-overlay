EAPI=8

DESCRIPTION="Converts teledisk images"
HOMEPAGE="http://dunfield.classiccmp.org/img42841/teledisk.htm"
LICENSE="GPL-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

S="${WORKDIR}"

src_prepare() {
    default
    sed -i 's/^CFLAGS\s*=\s-std=c99/CFLAGS += /' Makefile
}

src_install() {
	dobin td02imd
}
