EAPI=8

DESCRIPTION="CLI tool that converts RCA-VOC to WAV"
HOMEPAGE="https://www.dechifro.org/rca/"
LICENSE="GPL-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

S="${WORKDIR}/$PN"

src_install() {
	dobin devoc
}
