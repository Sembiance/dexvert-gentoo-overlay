EAPI=8

DESCRIPTION="Atari ST and Amiga music player"
HOMEPAGE="https://sourceforge.net/projects/sc68/files/sc68/"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="sys-apps/texinfo"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/sc68_texi_title.patch" )
