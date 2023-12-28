EAPI=8

DESCRIPTION="Command line tool convert AmigaBASIC files to ASCII"
HOMEPAGE="http://aminet.net/package/dev/misc/ab2ascii-1.3"
LICENSE="GPL"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.bz2"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/fix-problems.patch" )

src_install() {
	dobin ab2ascii
}
