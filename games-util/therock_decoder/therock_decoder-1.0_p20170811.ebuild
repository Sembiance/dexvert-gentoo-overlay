EAPI=8

CRATES="byteorder@1.1.0"
inherit cargo

DESCRIPTION="CLI tool that converts a REKO cardset to a PNG"
HOMEPAGE="https://github.com/Sembiance/reko2png"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip
	${CARGO_CRATE_URIS}"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-gfx/imagemagick"
RDEPEND=${DEPEND}
