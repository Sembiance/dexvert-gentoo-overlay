EAPI=8

DESCRIPTION="Resource extractor for MMFW resource files"
HOMEPAGE="https://github.com/david47k/mmex"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test strip"

src_prepare() {
    default
    rm -f mmex mmex.exe mmex.x64.exe
}

src_compile() {
	emake mmex
}

src_install() {
    dobin mmex
}
