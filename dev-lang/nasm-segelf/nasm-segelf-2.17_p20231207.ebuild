EAPI=8

inherit meson

DESCRIPTION="nasm fork with segelf patches"
HOMEPAGE="https://github.com/stsp/nasm-segelf"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test strip"

src_install() {
	dobin "${BUILD_DIR}"/build/nasm-segelf
}
