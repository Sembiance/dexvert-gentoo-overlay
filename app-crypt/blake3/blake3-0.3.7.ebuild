EAPI="7"

DESCRIPTION="App to generate BLAKE3 hashes"
HOMEPAGE="https://github.com/BLAKE3-team/BLAKE3"
BIN_FILENAME="b3sum_linux_x64_bin"
SRC_URI="https://github.com/BLAKE3-team/BLAKE3/releases/download/${PV}/${BIN_FILENAME}"
S="${WORKDIR}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="mirror"

src_install() {
	exeinto /opt/blake3

	doexe ${DISTDIR}/${BIN_FILENAME}
    dosym ../blake3/${BIN_FILENAME} /opt/bin/b3sum
}
