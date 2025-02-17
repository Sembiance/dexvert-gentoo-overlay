EAPI=8

inherit autotools

DESCRIPTION="Open source DXT compression library"
HOMEPAGE="https://code.google.com/archive/p/libsquish/"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

#src_prepare() {
#	default
#	eautoreconf
#}
