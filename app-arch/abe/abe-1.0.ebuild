EAPI=8

DESCRIPTION="Tool to encode/decode ABE format"
HOMEPAGE="https://www.templetons.com/brad/"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
    dobin abe
	dobin dabe
	doman dabe.1
	doman abe.1
}
