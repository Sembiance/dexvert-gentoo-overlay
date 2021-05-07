EAPI=7

inherit autotools

DESCRIPTION="libconfini is the ultimate and most consistent INI file parser library written in C."
HOMEPAGE="https://github.com/madmurphy/libconfini"
SRC_URI="https://github.com/madmurphy/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="test mirror"

src_prepare() {
    default

    eautoreconf
}
