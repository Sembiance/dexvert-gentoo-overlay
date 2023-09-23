EAPI=8

inherit autotools

DESCRIPTION="A set of fast command-line tools for manipulationg Gimp's file format XCF."
HOMEPAGE="http://henning.makholm.net/xcftools/"
LICENSE="GPL-2.0"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=media-libs/libpng-1.4:0
	sys-devel/gettext
	virtual/pkgconfig"
RDEPEND=">=media-libs/libpng-1.4:0
	virtual/libintl"

PATCHES=(
	"${FILESDIR}/0001-Fix-compilation-against-libpng-1.5.patch"
	"${FILESDIR}/0002-Fix-build-system-to-use-correct-libraries.patch"
	"${FILESDIR}/0003-Remove-strip-from-install-target.patch"
)

src_prepare() {
	default

	eautoreconf
}

src_configure() {
	econf --enable-nls
}
