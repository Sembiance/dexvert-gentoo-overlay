EAPI=8

DESCRIPTION="C64 PRG unpacker"
HOMEPAGE="https://iancoog.altervista.org/"
LICENSE="GPL-2"
MY_PV="${PV//.}"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}_${MY_PV}.tar.gz"
S="${WORKDIR}/${PN}_${MY_PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/bool.patch" )

src_compile() {
	cd src
	make
}
src_install() {
	dobin src/Release/unp64
}
