EAPI=7

DESCRIPTION="Tools to process the pgf files"
HOMEPAGE="https://sourceforge.net/projects/libpgf/files/libpgf/"
LICENSE="LGPL-2.1"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/pgf-console-${PV}.zip"
S="${WORKDIR}/pgf"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=media-libs/libpgf-${PV}"
RDEPEND=${DEPEND}

src_compile() {
    default
    g++ -o pgf -lfreeimageplus -lpgf src/PNMPlugin.cpp src/CImage.cpp src/PGF.cpp
}

src_install() {
	dobin pgf
}
