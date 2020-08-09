EAPI=7

inherit git-r3

DESCRIPTION="CLI tool that can convert Cyber Paint SEQ to MP4"
HOMEPAGE="https://github.com/Sembiance/seq2mp4"
EGIT_REPO_URI="https://github.com/Sembiance/seq2mp4.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=virtual/jdk-1.8"
RDEPEND=${DEPEND}

RESTRICT="mirror"

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
