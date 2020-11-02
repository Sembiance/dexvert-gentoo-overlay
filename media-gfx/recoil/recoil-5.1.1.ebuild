EAPI=7

DESCRIPTION="Retro Computer image converter"
HOMEPAGE="http://recoil.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${PV}/${PN}-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin recoil2png
	doman recoil2png.1
}
