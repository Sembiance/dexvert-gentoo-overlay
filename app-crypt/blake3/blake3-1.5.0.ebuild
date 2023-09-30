EAPI=8

DESCRIPTION="App to generate BLAKE3 hashes"
HOMEPAGE="https://github.com/BLAKE3-team/BLAKE3/releases"
LICENSE="MIT"
BIN_FILENAME="b3sum-${PV}_linux_x64_bin"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${BIN_FILENAME}"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	exeinto /opt/blake3

	doexe ${DISTDIR}/${BIN_FILENAME}
    dosym ../blake3/${BIN_FILENAME} /opt/bin/b3sum
}
