EAPI=8

inherit autotools flag-o-matic

# We have a custom ebuild because the one in portage requires gconf now, which isn't *really* needed
DESCRIPTION="Burn CDs in disk-at-once mode -- with optional GUI frontend"
HOMEPAGE="https://sourceforge.net/projects/cdrdao/files/"
LICENSE="GPL-2+"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.bz2"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=(
	"${FILESDIR}/${P}-ax_pthread.patch"
	"${FILESDIR}/${P}-wformat-security.patch"
)

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	append-cxxflags -std=c++11
	econf --without-gcdmaster --with-ogg-support --with-mp3-support --with-lame
}
