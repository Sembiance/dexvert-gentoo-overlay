EAPI=8

DESCRIPTION="Extracts .xpk and other amiga compressed files"
HOMEPAGE="https://github.com/Sembiance/amigadepacker"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.bz2"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/fixes_from_libxml.patch" )

src_install() {
	dobin ${PN}
	doman ${PN}.1
}
