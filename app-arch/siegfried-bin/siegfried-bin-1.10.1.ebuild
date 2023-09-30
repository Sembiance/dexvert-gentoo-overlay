EAPI=8

DESCRIPTION="signature-based file format identification"
HOMEPAGE="https://github.com/richardlehane/siegfried/releases"
LICENSE="Apache-2.0"

MY_PN="siegfried"
MY_PV="${PV//./-}"

SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_PN}_${MY_PV}_linux64.zip
	https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/data_${MY_PV}.zip"
S=${WORKDIR}

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	into /opt/${PN}
    insinto /opt/${PN}

	doins -r ${MY_PN}

	dosym /opt/${PN}/bin/sf /opt/bin/sf
	newbin sf sf

	dosym /opt/${PN}/bin/roy /opt/bin/roy
	newbin roy roy
}
