EAPI=7

DESCRIPTION="A tool to view and convert Amigaguide documents"
HOMEPAGE="http://grotag.sourceforge.net/"
LICENSE="GPL-3"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=virtual/jdk-1.8"
RDEPEND=${DEPEND}

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	doins Grotag.jar

	dosym /opt/${PN}/bin/${PN} /opt/bin/${PN}

	newbin "${FILESDIR}"/${PN}-bin ${PN}
}
