EAPI=7

inherit autotools

DESCRIPTION="libconfini is the ultimate and most consistent INI file parser library written in C."
HOMEPAGE="https://github.com/madmurphy/libconfini"
LICENSE="GPL-3"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
    default

    eautoreconf
}
