EAPI=7

DESCRIPTION="WMF to SVG Converting Tool & Library for Java"
HOMEPAGE="https://github.com/hidekatsu-izuno/wmf2svg"
LICENSE="Apache-2.0"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
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
