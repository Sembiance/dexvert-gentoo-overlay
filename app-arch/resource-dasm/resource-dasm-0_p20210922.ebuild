EAPI=7

DESCRIPTION="Various tools to extract data from MacOS resource forks"
MY_PN="resource_dasm"
HOMEPAGE="https://github.com/fuzziqersoftware/resource_dasm"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_PN}-${PV}.zip"
S="${WORKDIR}/${MY_PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-libs/phosg"

PATCHES=( "${FILESDIR}/fix_missing_string_header.patch" )

src_prepare() {
	default
}

src_install() {
	dobin resource_dasm
	dobin hypercard_dasm
	dobin render_bits
}
