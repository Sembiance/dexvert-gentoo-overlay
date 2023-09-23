EAPI=8

DESCRIPTION="Converts PCD images into JPEG"
HOMEPAGE="https://sourceforge.net/projects/pcdtojpeg/files/pcdtojpeg/"
LICENSE="LGPL-2.1"
MY_PV="${PV//./_}"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}_${MY_PV}.zip"
S="${WORKDIR}/pcdtojpeg_${MY_PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="virtual/jpeg"
RDEPEND=${DEPEND}

src_compile() {
    default
	cd src
    g++ -ljpeg -lpthread -o pcdtojpeg main.cpp pcdDecode.cpp
}

src_install() {
	dobin src/pcdtojpeg
}
