EAPI=7

DESCRIPTION="Command line tool to identify files"
HOMEPAGE="https://mark0.net/soft-trid-e.html"
LICENSE="Apache-2.0"

MY_PV=$(ver_cut 1-2)
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}-${MY_PV}.zip
	https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/tridscan.zip
	https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/triddefs-${PV}.zip"
S=${WORKDIR}

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

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
