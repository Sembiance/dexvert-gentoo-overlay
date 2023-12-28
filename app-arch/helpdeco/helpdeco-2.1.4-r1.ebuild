EAPI=8

DESCRIPTION="A tool to dissect or convert WinHelp HLP files"
HOMEPAGE="https://sourceforge.net/projects/helpdeco//files/"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/dexvert.patch" )

src_install() {
	dobin ${PN}
	dobin splitmrb
	dobin zapres
}
