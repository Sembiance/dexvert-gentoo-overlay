EAPI=7
inherit cmake-utils

DESCRIPTION="ANSI and ASCII art library"
HOMEPAGE="https://www.ansilove.org/"
SRC_URI="https://github.com/ansilove/${PN}/releases/download/${PV}/${PN}-${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror test"
