EAPI=7

DESCRIPTION="A tool to extract files from various video game formats"
HOMEPAGE="http://www.watto.org/game_extractor.html"
MY_PV=$(ver_rs 1- '')
SRC_URI="https://phoenixnap.dl.sourceforge.net/project/${PN}/Game%20Extractor%203.0x/${PV}/extract_${MY_PV}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=">=virtual/jdk-1.8"
RDEPEND=${DEPEND}

S=${WORKDIR}

src_prepare() {
	cp 	"${FILESDIR}"/settings.xml "${S}"/settings/settings.xml

	default
}

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	doins -r .

	fperms 0777 /opt/gameextractor/logs
	fperms 0777 /opt/gameextractor/temp
	fperms 0777 /opt/gameextractor/settings

	dosym /opt/${PN}/bin/${PN} /opt/bin/${PN}

	newbin "${FILESDIR}"/${PN}-bin ${PN}
}
