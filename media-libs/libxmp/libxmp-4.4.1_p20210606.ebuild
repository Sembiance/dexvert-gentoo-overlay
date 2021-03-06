EAPI=7

inherit autotools

DESCRIPTION="Extended Module Player library"
HOMEPAGE="http://xmp.sourceforge.net/"
LICENSE="LGPL-2.1"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

BDEPEND="virtual/pkgconfig"

src_prepare() {
	default

	eautoreconf
}
