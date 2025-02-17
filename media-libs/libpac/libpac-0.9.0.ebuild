EAPI=8

DESCRIPTION="Library to play SBStudio PAC music modules"
HOMEPAGE="https://sourceforge.net/projects/libpac/files/"
LICENSE="ISC"

SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tgz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="media-libs/libao"
DEPEND=""

PATCHES=( "${FILESDIR}/pacplay_wav.patch" )

src_compile() {
	emake pacplay
}

src_install() {
	dobin src/pacplay/pacplay
	doman src/pacplay/pacplay.1
}
