EAPI=8

DESCRIPTION="Ghostscript processing tools"
HOMEPAGE="https://github.com/ArtifexSoftware/ghostpdl-downloads/releases"
LICENSE="AGPL-3"
MY_PV=$(ver_rs 1- '')
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/ghostpcl-${PV}-linux-x86_64.tgz"
S="${WORKDIR}/ghostpcl-${PV}-linux-x86_64"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	mv gpcl6-${MY_PV}-linux-x86_64 gpcl6
	dobin gpcl6
}
