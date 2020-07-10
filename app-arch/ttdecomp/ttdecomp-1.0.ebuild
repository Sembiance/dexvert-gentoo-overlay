EAPI=7

DESCRIPTION="Extracts TTComp compressed archive data"
HOMEPAGE="http://www.exelana.com/techie/c/ttdecomp.html"
SRC_URI="http://www.exelana.com/techie/c/${PN}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"
PATCHES=( "${FILESDIR}/fix-infinite-loop-on-malformed-files.patch" )

S="${WORKDIR}/${PN}"

src_install() {
	dobin ${PN}
}
