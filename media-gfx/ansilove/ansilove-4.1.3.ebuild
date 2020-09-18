EAPI=7
inherit cmake-utils

DESCRIPTION="ANSI and ASCII art converter"
HOMEPAGE="https://www.ansilove.org/"
SRC_URI="https://github.com/${PN}/${PN}/releases/download/${PV}/${PN}-${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="media-libs/libansilove"
RDEPEND=${DEPEND}

RESTRICT="mirror test"
