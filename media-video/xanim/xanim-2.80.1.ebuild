EAPI=7

DESCRIPTION="Supports viewing and playing various movie formats"
HOMEPAGE="http://xanim.polter.net/"
LICENSE="MIT"
MY_PV=$(ver_rs 1-2 '')
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}${MY_PV}.tar.gz"
S="${WORKDIR}/${PN}${MY_PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/x11-headers.patch" )

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
