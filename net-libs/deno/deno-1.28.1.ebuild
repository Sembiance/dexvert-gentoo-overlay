EAPI=7

DESCRIPTION="A secure JavaScript and TypeScript runtime."
HOMEPAGE="https://github.com/denoland/deno/releases"
LICENSE="MIT"
# Download the file: deno-x86_64-unknown-linux-gnu.zip and rename
SRC_URI="https://telparia.com/distfiles/compendium/${CATEGORY}/${PN}/${P}.zip"

S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin deno
	doenvd "${FILESDIR}"/99deno
}
