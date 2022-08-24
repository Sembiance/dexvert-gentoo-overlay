EAPI=7

DESCRIPTION="Freeze file compression utility"
HOMEPAGE="http://fileformats.archiveteam.org/wiki/Freeze/Melt"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/fix_compile_bug.patch" )

src_install() {
	dobin freeze
	doman freeze.1

	dobin showhuf

	dobin statist
	doman statist.1
}
