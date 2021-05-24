EAPI=7

DESCRIPTION="A tool to dissect or convert WinHelp HLP files"
HOMEPAGE="https://sourceforge.net/projects/helpdeco/"
SRC_URI="mirror://sourceforge/${PN}/${PN}-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

PATCHES=( "${FILESDIR}/continueOnError.patch" )

src_install() {
	dobin ${PN}
	dobin splitmrb
	dobin zapres
}
