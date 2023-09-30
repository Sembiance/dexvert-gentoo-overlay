EAPI=8

DESCRIPTION="Free Zip / Unzip software and Rar file extractor."
HOMEPAGE="https://github.com/peazip/PeaZip/releases"
LICENSE="LGPL-3.0"
MY_P="${PN}_portable-${PV}.LINUX.GTK2.x86_64"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_P}.tar.gz"
S="${WORKDIR}/${MY_P}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	exeinto /opt/${PN}
	doexe ${PN}
	doexe pea

	insinto /opt/${PN}
	doins -r res

	dosym /opt/${PN}/${PN} /opt/bin/${PN}
	dosym /opt/${PN}/pea /opt/bin/pea
}
