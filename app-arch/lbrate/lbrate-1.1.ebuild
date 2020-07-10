EAPI=7

DESCRIPTION="LBR extraction program"
HOMEPAGE="http://www.svgalib.org/rus/lbrate.html"
SRC_URI="ftp://ftp.ibiblio.org/pub/Linux/utils/compress/lbrate-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin lbrate
	doman lbrate.1
}
