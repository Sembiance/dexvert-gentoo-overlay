EAPI=8

DESCRIPTION="CLI tool that converts KDM files to IT"
HOMEPAGE="http://advsys.net/ken/download.htm"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	gcc -o kdm2it kdm2it.c
}

src_install() {
	into /opt/${PN}
    insinto /opt/${PN}

	doins ${PN}
	doins waves.kwv
	fperms 0755 /opt/${PN}/${PN}

	dosym /opt/${PN}/bin/${PN} /opt/bin/${PN}
	newbin "${FILESDIR}"/${PN}-bin ${PN}
}
