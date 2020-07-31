EAPI=7

inherit git-r3

DESCRIPTION="Decompression routines for ancient formats"
HOMEPAGE="https://github.com/temisu/ancient_format_decompressor"
EGIT_REPO_URI="https://github.com/temisu/ancient_format_decompressor.git"

DEPEND=""
RDEPEND="${DEPEND}"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="mirror"

src_install() {
	dobin ancient
}
