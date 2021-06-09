EAPI=7

DESCRIPTION="C64 image viewer and converter"
HOMEPAGE="http://view64.sourceforge.net/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}-src.zip"
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
