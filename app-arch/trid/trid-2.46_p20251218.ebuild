EAPI=8

DESCRIPTION="Command line tool to identify files"
HOMEPAGE="https://mark0.net/soft-trid-e.html"
LICENSE="Apache-2.0"

MY_PV=$(ver_cut 1-2)

SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}-${MY_PV}.zip
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/tridscan-3.12.zip
	https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/triddefs-${PV}.zip"
S=${WORKDIR}

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-lang/python"
RDEPEND="${DEPEND}"

src_install() {
	touch .triddefs.trd.cache

	into /opt/${PN}
    insinto /opt/${PN}

	doins -r .

	fperms 0755 /opt/${PN}/${PN}.py
	dosym /opt/${PN}/${PN}.py /opt/bin/${PN}

	fperms 0755 /opt/${PN}/${PN}scan.py
	dosym /opt/${PN}/${PN}scan.py /opt/bin/${PN}scan

	fperms 777 /opt/${PN}/.triddefs.trd.cache
}
