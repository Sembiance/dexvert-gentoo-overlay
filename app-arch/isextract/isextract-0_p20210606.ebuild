EAPI=8

DESCRIPTION="CLI tool that extracts installshield .z files"
HOMEPAGE="https://github.com/OmniBlade/isextract"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin build/isextract
}
