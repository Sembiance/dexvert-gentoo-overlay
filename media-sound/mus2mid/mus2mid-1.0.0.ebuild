EAPI=8

DESCRIPTION="Converts a DOOM MUS file to MIDI"
HOMEPAGE="https://github.com/Sembiance/mus2mid"
LICENSE="GPL-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

S="${WORKDIR}"

src_install() {
	dobin mus2mid
}
