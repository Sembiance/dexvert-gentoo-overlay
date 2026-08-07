EAPI=8

DESCRIPTION="Converts miltiple different image types and various archives"
HOMEPAGE="https://github.com/jsummers/deark"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin deark
}
