EAPI=7

DESCRIPTION="Converts miltiple different image types and various archives"
HOMEPAGE="https://entropymine.com/deark/"
SRC_URI="https://github.com/jsummers/${PN}/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

PATCHES=( "${FILESDIR}/rsc-invalid-files.patch" )

src_install() {
	dobin deark
}
