EAPI=7

DESCRIPTION="Files extractor and reimporter, archives and file formats parser"
HOMEPAGE="https://aluigi.altervista.org/${PN}.htm"
SRC_URI="https://aluigi.altervista.org/papers/${PN}-src-${PV}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="app-arch/bzip2
	dev-libs/openssl[abi_x86_32]
	sys-libs/zlib"
RDEPEND="app-arch/unzip"

S="${WORKDIR}/src"

PATCHES=( "${FILESDIR}/fixMakefile.patch" )

src_install() {
	dobin ${PN}
}

