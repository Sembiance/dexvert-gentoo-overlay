EAPI=8

inherit cmake

DESCRIPTION="Various tools to extract data from MacOS resource forks"
MY_PN="resource_dasm"
HOMEPAGE="https://github.com/fuzziqersoftware/resource_dasm"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_PN}-${PV}.zip"
S="${WORKDIR}/${MY_PN}-master"

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
