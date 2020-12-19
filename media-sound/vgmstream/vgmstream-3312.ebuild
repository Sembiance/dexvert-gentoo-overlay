EAPI=7

inherit cmake-utils

DESCRIPTION="Library and CLI for playback of streamed audio formats from games"
HOMEPAGE="https://github.com/vgmstream/vgmstream/"
SRC_URI="https://github.com/${PN}/${PN}/archive/r1050-${PV}-g70d20924.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}/${PN}-r1050-${PV}-g70d20924"

RDEPEND=""
DEPEND="${RDEPEND}"
RESTRICT="mirror"

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
