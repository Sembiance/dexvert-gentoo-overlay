EAPI=7

DESCRIPTION="Unix Amiga Delitracker Emulator - plays old Amiga tunes through UAE emulation"
HOMEPAGE="https://gitlab.com/uade-music-player/uade"
LICENSE="GPL-2+ LGPL-2+"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="
	dev-libs/bencodetools
	media-libs/libao"
DEPEND="${RDEPEND}"

src_configure() {
	# not autotools generated
	local configure=(
		./configure
		--prefix=/usr
		--libdir=/usr/$(get_libdir)
		--bencode-tools-prefix=/usr/lib64
		--with-text-scope
		--without-uadefs
		${EXTRA_ECONF}
	)
	echo ${configure[*]}
	"${configure[@]}" || die
}