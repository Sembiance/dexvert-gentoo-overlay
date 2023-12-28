EAPI=8

DESCRIPTION="Files extractor and reimporter, archives and file formats parser"
HOMEPAGE="https://aluigi.altervista.org/quickbms.htm"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}-src-${PV}.zip"
S="${WORKDIR}/src"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="app-arch/bzip2
	dev-libs/openssl[abi_x86_32]
	sys-libs/zlib"
RDEPEND="app-arch/unzip"

PATCHES=( "${FILESDIR}/fixMakefile.patch" "${FILESDIR}/fixOpenSSL.patch" )

src_install() {
	dobin ${PN}
}
