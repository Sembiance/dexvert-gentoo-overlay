EAPI=8

DESCRIPTION="ST-Sound plays YM sound files"
HOMEPAGE="http://leonard.oxg.free.fr/stsound_download.html"
LICENSE="BSD"

MY_PV="${PV//./_}"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}_${MY_PV}.zip"
S="${WORKDIR}/${PN}Package"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	cd Ym2Wav
	g++ -o ym2wav Ym2Wav.cpp  ../StSoundLibrary/*.cpp ../StSoundLibrary/LZH/*.cpp
}

src_install() {
	dobin Ym2Wav/ym2wav
}
