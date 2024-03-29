EAPI=8

DESCRIPTION="C64 image viewer and converter"
HOMEPAGE="https://sourceforge.net/projects/view64/files/source/"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}-src.zip"
S="${WORKDIR}/${PN}-${PV}-src"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="x11-libs/fltk"
RDEPEND=${DEPEND}

src_install() {
	dobin view64
	dobin view64pnm

	doman view64.1
	doman view64pnm.1

	dodoc README
}
