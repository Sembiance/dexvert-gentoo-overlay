EAPI=7

DESCRIPTION="Ghostscript processing tools"
HOMEPAGE="https://www.ghostscript.com/download/gpcldnld.html"
MY_PV=$(ver_rs 1- '')
SRC_URI="https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs${MY_PV}/ghostpcl-${PV}-linux-x86_64.tgz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

RESTRICT="mirror"

S="${WORKDIR}/ghostpcl-${PV}-linux-x86_64"

src_install() {
	mv gpcl6-${MY_PV}-linux-x86_64 gpcl6
	dobin gpcl6
}
