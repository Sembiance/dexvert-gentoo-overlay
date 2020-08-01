EAPI=7

DESCRIPTION="Extracts ICE compressed files"
HOMEPAGE="https://sourceforge.net/projects/sc68/"
SRC_URI="https://master.dl.sourceforge.net/project/sc68/${PN}/source-packages/${PN}-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin ${PN}
}
