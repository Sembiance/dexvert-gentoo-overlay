EAPI=7

inherit cmake-utils

DESCRIPTION="SoundFont editor program"
HOMEPAGE="https://github.com/${PN}/${PN}"
SRC_URI="https://github.com/${PN}/${PN}/archive/v${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="media-libs/libinstpatch
	x11-libs/gtk+
	media-libs/libsndfile
	gnome-base/libgnomecanvas"
RDEPEND="${DEPEND}"

RESTRICT="mirror test"
