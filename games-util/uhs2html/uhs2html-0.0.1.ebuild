EAPI=8

DESCRIPTION="CLI tool that converts a Universal Hint System UHS file into HTML files"
HOMEPAGE="http://www.emulinks.de/software.html"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

S="${WORKDIR}"

src_install() {
	dobin uhs2html
}
