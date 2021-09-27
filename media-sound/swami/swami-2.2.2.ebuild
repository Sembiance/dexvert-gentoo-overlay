EAPI=7

inherit cmake-utils

DESCRIPTION="SoundFont editor program"
HOMEPAGE="https://github.com/swami/swami/releases"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libinstpatch
	x11-libs/gtk+
	media-libs/libsndfile
	gnome-base/libgnomecanvas"
RDEPEND="${BDEPEND}"
