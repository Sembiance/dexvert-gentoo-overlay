EAPI=7

DESCRIPTION="A tool to view and convert Amigaguide documents"
HOMEPAGE="http://grotag.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${PV}/Grotag-${PV}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">=virtual/jdk-1.8"
RDEPEND=${DEPEND}

S=${WORKDIR}

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	doins Grotag.jar

	dosym /opt/${PN}/bin/${PN} /opt/bin/${PN}

	newbin "${FILESDIR}"/${PN}-bin ${PN}
}
