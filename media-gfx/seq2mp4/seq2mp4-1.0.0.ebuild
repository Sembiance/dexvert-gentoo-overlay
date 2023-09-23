EAPI=8

DESCRIPTION="CLI tool that can convert Cyber Paint SEQ to MP4"
HOMEPAGE="https://github.com/Sembiance/seq2mp4"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=virtual/jdk-1.8"
RDEPEND=${DEPEND}

src_compile() {
	./build.sh
}

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	doins seq2mp4
	doins seq2anim.jar

	fperms 0755 /opt/${PN}/${PN}
	
	dosym /opt/${PN}/${PN} /opt/bin/${PN}
}
