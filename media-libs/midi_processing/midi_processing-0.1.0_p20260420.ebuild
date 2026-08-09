EAPI=8

inherit cmake

DESCRIPTION="MIDI file processing code, as lifted from foo_midi and modified to use STL classes instead"
HOMEPAGE="https://github.com/losnoco/midi_processing"
LICENSE="BSD"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dolib.a "${BUILD_DIR}/libmidi_processing.a"

	insinto /usr/include/midi_processing
	doins midi_container.h midi_processor.h
}
