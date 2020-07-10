EAPI=7

DESCRIPTION="Command line tool to extract pcxLib and gxLib files"
HOMEPAGE="http://www.ctpax-x.org/?goto=files&show=104"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-emulation/wine-vanilla"
RDEPEND="${DEPEND}"

RESTRICT="mirror test"

S=${WORKDIR}

src_install() {
	into /opt/${PN}
    insinto /opt/${PN}

	doins -r ${FILESDIR}/unpcxgx.exe

	dosym /opt/${PN}/bin/${PN} /opt/bin/${PN}

	newbin "${FILESDIR}"/${PN} ${PN}
}
