EAPI=7

DESCRIPTION="CLI tool that extracts data from HyperCard stacks"
HOMEPAGE="https://github.com/uliwitness/stackimport/"
LICENSE="stackimport-license"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip
	https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/snd2wav-${PV}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/fixCoreDump.patch" )

src_prepare() {
	default

	rm -r snd2wav
	mv "${WORKDIR}/snd2wav-master" snd2wav
}

src_compile() {
	g++ -o stackimport woba.cpp Tests.cpp picture.cpp main.cpp CStackFile.cpp CBuf.cpp byteutils.cpp -std=gnu++11
}

src_install() {
	dobin stackimport
}
