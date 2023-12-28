EAPI=8

DESCRIPTION="AppleCommander is a tool that manipulates Apple ][ disk images"
HOMEPAGE="https://github.com/AppleCommander/AppleCommander/releases"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=virtual/jdk-1.8"
RDEPEND=${DEPEND}

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	mv ${PN}-ac-${PV}.jar ac.jar
	mv ${PN}-acx-${PV}.jar acx.jar
	mv ${PN}-linux-x86_64-${PV}.jar AppleCommander.jar

	doins ac.jar
	doins acx.jar
	doins ${PN}.jar

	dosym /opt/${PN}/bin/ac /opt/bin/ac
	dosym /opt/${PN}/bin/acx /opt/bin/acx
	dosym /opt/${PN}/bin/${PN} /opt/bin/${PN}

	newbin "${FILESDIR}"/${PN} ${PN}
	newbin "${FILESDIR}"/ac ac
	newbin "${FILESDIR}"/acx acx
}
