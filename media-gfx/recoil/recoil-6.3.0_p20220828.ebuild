EAPI=8

DESCRIPTION="Retro Computer image converter"
HOMEPAGE="https://sourceforge.net/p/recoil/code/ci/master/tree/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/recoil-code-566206f83d4b4e5b25951855436a4fc0f79064ee"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="sys-devel/cito
	dev-libs/libxslt"
RDEPEND="${DEPEND}"

src_install() {
	dobin recoil2png
	doman recoil2png.1

	cd www
	xsltproc -o formats.html www.xsl formats.xml
	dodoc formats.html
}
