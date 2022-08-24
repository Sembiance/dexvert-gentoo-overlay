EAPI=7

inherit cmake

DESCRIPTION="Various tools to extract data from MacOS resource forks"
HOMEPAGE="https://github.com/fuzziqersoftware/resource_dasm"
LICENSE="MIT"
MY_PN="resource_dasm"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_PN}-${PV}.zip"
S="${WORKDIR}/resource_dasm-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-libs/phosg"

src_install() {
	cmake_src_install

	# Do not violate multilib strict
	mv "${ED}/usr/lib" "${ED}/usr/$(get_libdir)" || die "mv failed"

	dobin ${BUILD_DIR}/hypercard_dasm
}