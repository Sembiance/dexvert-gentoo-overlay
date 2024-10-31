EAPI=8

DESCRIPTION="Retro Computer image converter"
HOMEPAGE="https://sourceforge.net/p/recoil/code/ci/master/tree/"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/recoil-code-350880a3c5a77f2e812570680cb61c9e429fefb8"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="sys-devel/fut
	dev-libs/libxslt"
RDEPEND="${DEPEND}"

src_install() {
	dobin recoil2png
	doman recoil2png.1

	cd www
	xsltproc -o formats.html www.xsl formats.xml
	dodoc formats.html
}
