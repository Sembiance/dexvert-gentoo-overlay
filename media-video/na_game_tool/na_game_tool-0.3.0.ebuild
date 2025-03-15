EAPI=8

inherit cargo

DESCRIPTION="Supports extracting video and audio from various old game video files"
HOMEPAGE="https://nihav.org/game_tool.html"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.bz2"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"
