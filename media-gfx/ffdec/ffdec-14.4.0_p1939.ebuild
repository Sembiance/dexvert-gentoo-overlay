EAPI=8

DESCRIPTION="JPEXS Free Flash Decompiler"
HOMEPAGE="https://github.com/jindrapetrik/jpexs-decompiler/releases"
LICENSE="GPL-3"
MY_PV=${PV/_p/_nightly}
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}_${MY_PV}.zip"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=virtual/jdk-1.8"
RDEPEND=${DEPEND}

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	doins -r .

	dosym /opt/${PN}/bin/${PN} /opt/bin/${PN}

	newbin "${FILESDIR}"/${PN} ${PN}
}
