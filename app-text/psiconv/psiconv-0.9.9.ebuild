EAPI=8

DESCRIPTION="An interpreter for Psion 5(MX) file formats"
HOMEPAGE="https://frodo.looijaard.name/project/psiconv"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/fix_extern.patch" )
