EAPI=8

DESCRIPTION="Runs various checks on bytes in a file"
HOMEPAGE="https://github.com/Sembiance/checkBytes"
LICENSE="GPL-2.0"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

S="${WORKDIR}"

src_install() {
	dobin checkBytes
}
