EAPI=8

DESCRIPTION="fernflower is a Java decompiler"
HOMEPAGE="https://mvnrepository.com/artifact/com.jetbrains.intellij.java/java-decompiler-engine"
LICENSE="Apache-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=virtual/jdk-21"
RDEPEND=${DEPEND}

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	mv java-decompiler-engine-${PV}.jar ${PN}.jar
	doins ${PN}.jar
	dosym /opt/${PN}/bin/${PN} /opt/bin/${PN}
	newbin "${FILESDIR}"/${PN} ${PN}
}
