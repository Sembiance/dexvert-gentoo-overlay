EAPI=8

DESCRIPTION="Atari ST and Amiga music player"
HOMEPAGE="https://sourceforge.net/p/sc68/code/HEAD/tree/"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}-${PR}.zip"
S="${WORKDIR}/${PN}-code-${PR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libao
	sys-apps/texinfo"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	
	tools/svn-bootstrap.sh
}

src_configure() {
	econf --enable-sc68-tools
}
