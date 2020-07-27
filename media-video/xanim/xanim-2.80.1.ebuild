EAPI=7

DESCRIPTION="Supports viewing and playing various movie formats"
HOMEPAGE="http://xanim.polter.net/"
MY_PV=$(ver_rs 1-2 '')
SRC_URI="http://xanim.polter.net/files/${PN}${MY_PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

RESTRICT="mirror test"
PATCHES=( "${FILESDIR}/x11-headers.patch" )

S="${WORKDIR}/${PN}${MY_PV}"

src_configure() {
	xmkmf
}

src_compile() {
	emake ${PN}
}

src_install() {
	newman docs/${PN}.man xanim.1
	dobin ${PN}
}
