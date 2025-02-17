EAPI=8

DESCRIPTION="Source of the compressed loopback device module"
HOMEPAGE="https://launchpad.net/ubuntu/+source/cloop/"
LICENSE="GPL-2"

SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	# other things don't compile correctly, didn't investigate further as dexvert only needs this tool
	emake extract_compressed_fs
}

src_install() {
	dobin extract_compressed_fs
}
