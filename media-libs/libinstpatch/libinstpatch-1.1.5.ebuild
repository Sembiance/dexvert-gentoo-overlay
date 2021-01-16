EAPI=7

inherit cmake-utils

DESCRIPTION="Library to help process MIDI instrument patch files"
HOMEPAGE="https://github.com/swami/libinstpatch"
SRC_URI="https://github.com/swami/${PN}/archive/v${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

RESTRICT="mirror test"
