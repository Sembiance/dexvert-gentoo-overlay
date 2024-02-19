EAPI=8

DESCRIPTION="PC-98 disk image ripper commandline tool"
HOMEPAGE="https://gitlab.com/bunnylin/98ripper"
LICENSE="zlib"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin 98ripper
}
