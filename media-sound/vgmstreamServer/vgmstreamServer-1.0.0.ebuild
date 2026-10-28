EAPI=8

DESCRIPTION="Wraps vgmstream into a server for quicker detection and targeted conversion"
HOMEPAGE="https://github.com/vgmstream/vgmstream"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test strip"

RDEPEND="
	media-video/ffmpeg:=
	media-sound/mpg123
	media-libs/speex
	media-libs/libogg
	media-libs/libvorbis"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"

src_install() {
	dobin vgmstreamOverseer
	dobin vgmstreamServer
}
