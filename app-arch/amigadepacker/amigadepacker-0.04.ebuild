EAPI=7

DESCRIPTION="Extracts .xpk and other amiga compressed files"
HOMEPAGE="http://zakalwe.fi/~shd/foss/amigadepacker/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.bz2"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/fixes_from_libxml.patch" )

src_install() {
	dobin ${PN}
	doman ${PN}.1
}
