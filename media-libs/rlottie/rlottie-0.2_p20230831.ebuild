EAPI=8

inherit meson

DESCRIPTION="A platform independent standalone library that plays Lottie Animations"
HOMEPAGE="https://github.com/Samsung/rlottie"
LICENSE="BSD FTL JSON MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_configure() {
	local emesonargs=(
		-D cache=true
		-D module=true
		-D thread=true
		-D example=true

		-D cmake=false
	)

	meson_src_configure
}

src_install() {
	dobin ${BUILD_DIR}/example/lottie2gif
	meson_src_install
}
