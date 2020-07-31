EAPI=7

DESCRIPTION="Command line tool to identify files"
HOMEPAGE="https://mark0.net/soft-trid-e.html"
SRC_URI="https://mark0.net/download/${PN}_linux_64.zip
	https://mark0.net/download/${PN}defs.zip
	https://mark0.net/download/tridscan.zip"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

RESTRICT="mirror test"

S=${WORKDIR}

src_install() {
	into /opt/${PN}
    insinto /opt/${PN}

	doins -r .

	fperms 0755 /opt/${PN}/${PN}

	dosym /opt/${PN}/bin/${PN} /opt/bin/${PN}
	dosym /opt/${PN}/bin/tridscan /opt/bin/tridscan

	newbin "${FILESDIR}"/${PN}-bin ${PN}
	newbin "${FILESDIR}"/tridscan-bin tridscan
}
