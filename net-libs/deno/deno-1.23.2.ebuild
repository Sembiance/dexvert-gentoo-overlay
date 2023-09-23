EAPI=8

DESCRIPTION="A secure JavaScript and TypeScript runtime."
HOMEPAGE="https://github.com/denoland/deno/releases"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin deno
	doenvd "${FILESDIR}"/99deno
}
