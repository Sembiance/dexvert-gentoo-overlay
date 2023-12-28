EAPI=8

DESCRIPTION="Converts various images into PNGs using java's ImageIO and TwelveMonkeys plugins"
HOMEPAGE="https://github.com/Sembiance/iio2png"
LICENSE="BSD-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="${CP_DEPEND}
	dev-java/ant-core:0
	>=virtual/jdk-1.8:*"

src_compile() {
	ant build-portage
}

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	doins build/jar/${P}.jar
	doins ${PN}
	doins -r lib

	fperms 0755 /opt/${PN}/${PN}

	dosym /opt/${PN}/${PN} /opt/bin/${PN}
}
