EAPI=8

inherit cargo

DESCRIPTION="NihAV is a research multimedia framework"
HOMEPAGE="https://git.nihav.org/"
LICENSE="AGPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}/nihav"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	cd nihav-tool
	cargo_src_compile

	cd ../nihav-encoder
	cargo_src_compile
}

src_install() {
	cd nihav-tool
	cargo_src_install

	cd ../nihav-encoder
	cargo_src_install
}
