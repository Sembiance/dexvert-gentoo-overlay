EAPI=8

DESCRIPTION="Textualize a PNG image, or turn a textualized image back to a PNG."
HOMEPAGE="https://sng.sourceforge.net/"
LICENSE="ZLIB"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"
PATCHES=("${FILESDIR}/sng-1.1.2-compile-fixes.patch")
