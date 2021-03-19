EAPI=7

DESCRIPTION="A tool to identify and extract metadata and text from different file formats"
HOMEPAGE="https://tika.apache.org/"
MY_PV=$(ver_cut 1-3)
JAR_FILE="${PN}-app-${MY_PV}-ALPHA.jar"
SRC_URI="http://mirrors.ibiblio.org/apache/${PN}/${JAR_FILE}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""
RESTRICT="mirror"

DEPEND=">=virtual/jdk-1.8"
RDEPEND=${DEPEND}

S=${WORKDIR}

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
