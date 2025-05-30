EAPI=8

CRATES="byteorder@1.5.0"
inherit cargo

DESCRIPTION="CLI tool that extracts QT MOV videos files from MMFW Movies files"
HOMEPAGE="https://github.com/einstein95/mmvid_extractor"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip
	${CARGO_CRATE_URIS}"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	cargo_src_install
	cd "${D}/usr/bin"
	mv therock_decoder mmvid_extractor
}
