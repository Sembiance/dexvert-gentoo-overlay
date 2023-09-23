EAPI=8

inherit cmake

DESCRIPTION="C++ header files for common tasks, used by resource_dasm"
HOMEPAGE="https://github.com/fuzziqersoftware/phosg"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/stdint.patch" )

src_install() {
 	cmake_src_install
 
	# Do not violate multilib strict
	mv "${ED}/usr/lib" "${ED}/usr/$(get_libdir)" || die "mv failed"
	sed -i 's/usr\/lib/usr\/lib64/g' ${ED}/usr/lib64/phosg.cmake
}
