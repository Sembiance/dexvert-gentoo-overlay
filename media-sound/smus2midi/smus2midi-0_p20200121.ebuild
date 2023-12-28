EAPI=8

DESCRIPTION="CLI tool that converts SMUS files to MIDI"
HOMEPAGE="https://github.com/AugusteBonnin/smus2midi"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	g++ -Iinclude -o smus2midi main.cpp
}

src_install() {
	dobin smus2midi
}
