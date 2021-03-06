EAPI=7

DESCRIPTION="A tool to dissect or convert WinHelp HLP files"
HOMEPAGE="https://sourceforge.net/projects/helpdeco/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/continueOnError.patch" )

src_install() {
	dobin ${PN}
	dobin splitmrb
	dobin zapres
}
