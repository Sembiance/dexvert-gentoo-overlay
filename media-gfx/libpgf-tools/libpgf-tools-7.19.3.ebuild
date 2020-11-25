EAPI=7

DESCRIPTION="Tools to process the pgf files"
HOMEPAGE="https://www.libpgf.org/"
SRC_URI="https://downloads.sourceforge.net/project/libpgf/libpgf/${PV}-latest/libPGF-codec-and-console-src.zip -> ${P}.zip"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

DEPEND=">=media-libs/libpgf-${PV}"
RDEPEND=${DEPEND}

S="${WORKDIR}/libPGF-codec-and-console-src/PGF/Console"

src_compile() {
    default
    g++ -o pgf -lfreeimageplus -lpgf src/PNMPlugin.cpp src/CImage.cpp src/PGF.cpp
}

src_install() {
	dobin pgf
}
