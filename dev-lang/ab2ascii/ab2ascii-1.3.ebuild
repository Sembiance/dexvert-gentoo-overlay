EAPI=7

DESCRIPTION="Command line tool convert AmigaBASIC files to ASCII"
HOMEPAGE="http://aminet.net/package/dev/misc/ab2ascii-1.3"
LICENSE="GPL"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.lha"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/fix-problems.patch" )

src_install() {
	dobin ab2ascii
}
