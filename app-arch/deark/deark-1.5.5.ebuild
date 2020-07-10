EAPI=7

DESCRIPTION="Converts miltiple different image types and various archives"
HOMEPAGE="https://entropymine.com/deark/"
SRC_URI="https://entropymine.com/${PN}/releases/${PN}-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin deark
}
