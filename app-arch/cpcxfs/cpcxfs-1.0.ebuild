EAPI=7

DESCRIPTION="Command line tool work with CPC disk files"
HOMEPAGE="http://www.cpcwiki.eu/forum/applications/cpcxfs/"
SRC_URI="${PN}.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="fetch bindist"

DEPEND=""
RDEPEND="${DEPEND}"

pkg_nofetch() {
    einfo
    einfo "Please download from:"
    einfo "  ${HOMEPAGE}"
    einfo "and move it to your DISTDIR directory."
    einfo
}

S="${WORKDIR}/${PN}"

src_install() {
    dobin src/cpcxfs
}
