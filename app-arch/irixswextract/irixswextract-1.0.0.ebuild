EAPI=8

DESCRIPTION="Extracts IRIX software packages"
HOMEPAGE="https://gist.github.com/Sgeo/ff7c568e81b7efa09250dc3fc1253569"
LICENSE="GPL-2.0"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

S="${WORKDIR}"

src_install() {
	dobin irixswextract
}
