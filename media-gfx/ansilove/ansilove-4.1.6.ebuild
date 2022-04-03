EAPI=7

inherit cmake-utils

DESCRIPTION="ANSI and ASCII art converter"
HOMEPAGE="https://github.com/ansilove/ansilove/releases"
LICENSE="BSD-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libansilove"
RDEPEND=${DEPEND}
