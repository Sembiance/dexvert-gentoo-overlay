EAPI=8

DESCRIPTION="Software for transforming PDS3 and PDS4 product labels and product data into other formats."
HOMEPAGE="https://nasa-pds.github.io/transform/"
LICENSE="Apache-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/transform-${PV}-bin.tar.gz"
S="${WORKDIR}/transform-${PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=virtual/jdk-21"
RDEPEND=${DEPEND}

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	doins -r .
	
	doins "${FILESDIR}"/${PN}
	fperms 0755 /opt/${PN}/${PN}
	dosym /opt/${PN}/${PN} /opt/bin/${PN}
}
