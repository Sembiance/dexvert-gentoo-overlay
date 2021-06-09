EAPI=7

DESCRIPTION="Converts miltiple different image types and various archives"
HOMEPAGE="https://entropymine.com/${PN}/"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin deark
}
