EAPI=7

DESCRIPTION="Command line tool convert AmigaBASIC files to ASCII"
HOMEPAGE="http://aminet.net/package/dev/misc/${PN}-${PV}"
SRC_URI="http://aminet.net/dev/misc/${PN}-${PV}.lha"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
PATCHES=( "${FILESDIR}/fix-problems.patch" )
RESTRICT="mirror"

src_install() {
	dobin ab2ascii
}