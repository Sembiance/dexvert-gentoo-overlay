EAPI=7

DESCRIPTION="Converts PCD images into JPEG"
HOMEPAGE="https://pcdtojpeg.sourceforge.io/Home.html"
MY_PV="${PV//./_}"
SRC_URI="mirror://sourceforge/${PN}/pcdtojpeg_${MY_PV}.zip"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

DEPEND="virtual/jpeg"
RDEPEND=${DEPEND}

S="${WORKDIR}/pcdtojpeg_${MY_PV}"

src_compile() {
    default
	cd src
    g++ -ljpeg -lpthread -o pcdtojpeg main.cpp pcdDecode.cpp
}

src_install() {
	dobin src/pcdtojpeg
}
