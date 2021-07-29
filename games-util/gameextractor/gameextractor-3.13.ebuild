EAPI=7

DESCRIPTION="A tool to extract files from various video game formats"
HOMEPAGE="http://www.watto.org/game_extractor.html"
LICENSE="GPL-2"
MY_PV=$(ver_rs 1- '')
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/extract_${MY_PV}.zip"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=virtual/jdk-1.8
	games-util/quickbms"
RDEPEND=${DEPEND}

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

	dosym /usr/bin/quickbms /opt/${PN}/'\usr\bin\quickbms'
}
