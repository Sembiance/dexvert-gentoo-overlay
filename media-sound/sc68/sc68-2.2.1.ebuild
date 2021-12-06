EAPI=7

DESCRIPTION="Atari ST and Amiga music player"
HOMEPAGE="http://sc68.atari.org/"
LICENSE="GPL-3"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="sys-apps/texinfo"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/sc68_texi_title.patch" )