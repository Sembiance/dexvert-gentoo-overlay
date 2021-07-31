EAPI=7

DESCRIPTION="A tool to convert Norton Guide documents to HTML"
HOMEPAGE="http://www.davep.org/norton-guides/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}/ng2htm-${PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/frames_index.patch" )

src_install() {
	dobin ng2html
	doman ng2html.1
}
