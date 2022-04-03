EAPI=7

inherit cmake-utils

DESCRIPTION="Various tools to extract data from MacOS resource forks"
HOMEPAGE="https://github.com/fuzziqersoftware/resource_dasm"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/resource_dasm-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-libs/phosg"

PATCHES=( "${FILESDIR}/fix_source_types_var.patch" )

src_install() {
	cmake-utils_src_install

	# Do not violate multilib strict
	mv "${ED}/usr/lib" "${ED}/usr/$(get_libdir)" || die "mv failed"

	dobin ${BUILD_DIR}/hypercard_dasm
}
