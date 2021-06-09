EAPI=7

DESCRIPTION="A tool to identify and extract metadata and text from different file formats"
HOMEPAGE="https://tika.apache.org/"
LICENSE="Apache-2.0"
MY_PV=$(ver_cut 1-3)
JAR_FILE="${PN}-app-${MY_PV}-BETA.jar"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${JAR_FILE}"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=virtual/jdk-1.8"
RDEPEND=${DEPEND}

src_unpack() {
	cp ${DISTDIR}/${JAR_FILE} ${WORKDIR}
}

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	doins ${JAR_FILE}

	dosym /opt/${PN}/bin/${PN} /opt/bin/${PN}

	newbin "${FILESDIR}"/${PN}-bin ${PN}
}
