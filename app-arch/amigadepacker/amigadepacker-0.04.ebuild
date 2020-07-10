EAPI=7

DESCRIPTION="Extracts .xpk and other amiga compressed files"
HOMEPAGE="http://zakalwe.fi/~shd/foss/amigadepacker/"
SRC_URI="http://zakalwe.fi/~shd/foss/${PN}/${PN}-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin ${PN}
	doman ${PN}.1
}
