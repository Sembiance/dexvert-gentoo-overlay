EAPI=8

DESCRIPTION="CLI tool that uses midi_processing to convert various MIDI-like formats to MIDI"
HOMEPAGE="https://github.com/Sembiance/midistar2mid"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/midi_processing:="
RDEPEND="${DEPEND}"

src_install() {
	dobin midistar2mid
}
