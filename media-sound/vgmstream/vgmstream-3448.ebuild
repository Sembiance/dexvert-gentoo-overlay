EAPI=7

inherit cmake-utils

DESCRIPTION="Library and CLI for playback of streamed audio formats from games"
HOMEPAGE="https://github.com/vgmstream/vgmstream/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}-r1050-${PV}-g77cc431b.tar.gz"
S="${WORKDIR}/${PN}-r1050-${PV}-g77cc431b"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_configure() {
    local mycmakeargs=(
        -DBUILD_CLI=ON
        -DBUILD_AUDACIOUS=OFF
    )
    cmake-utils_src_configure
}

src_prepare() {
	cmake-utils_src_prepare
	echo "#define VERSION \"${PV}\"" > cli/version.h
}
