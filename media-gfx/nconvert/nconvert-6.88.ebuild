EAPI=7

DESCRIPTION="Convert more than 500 image formats"
HOMEPAGE="https://www.xnview.com/en/nconvert/#downloads"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tgz"
S="${WORKDIR}/NConvert"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
    dobin ${PN}
}
