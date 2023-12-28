EAPI=8

DESCRIPTION="CLI tool that converts a SC68 or SNDH file to RAW PCM files using sc68"
HOMEPAGE="https://github.com/Sembiance/sndh2raw"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-sound/sc68
	dev-libs/jansson"
RDEPEND="${DEPEND}"

src_install() {
	dobin sndh2raw
}
