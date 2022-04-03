EAPI=7

inherit cmake-utils

DESCRIPTION="C++ header files for common tasks, used by resource_dasm"
HOMEPAGE="https://github.com/fuzziqersoftware/phosg"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

#PATCHES=( "${FILESDIR}/cmake_fixes.patch" )

src_install() {
 	cmake-utils_src_install
 
	# Do not violate multilib strict
	mv "${ED}/usr/lib" "${ED}/usr/$(get_libdir)" || die "mv failed"
}
