EAPI=7

DESCRIPTION="C64 image viewer and converter"
HOMEPAGE="http://view64.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${PV}/${PN}-${PV}-src.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="x11-libs/fltk"
RDEPEND=${DEPEND}

RESTRICT="mirror"

S="${WORKDIR}/${PN}-${PV}-src"

src_install() {
	dobin view64
	dobin view64pnm

	doman view64.1
	doman view64pnm.1

	dodoc README
}
