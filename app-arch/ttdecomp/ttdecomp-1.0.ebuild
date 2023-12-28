EAPI=8

DESCRIPTION="Extracts TTComp compressed archive data"
HOMEPAGE="http://www.exelana.com/techie/c/ttdecomp.html"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tgz"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/fix-infinite-loop-on-malformed-files.patch" )

src_install() {
	dobin ${PN}
}
