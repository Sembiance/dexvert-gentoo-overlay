EAPI=8

DESCRIPTION="CLI playback of game audio"
HOMEPAGE="https://github.com/vgmstream/vgmstream/releases"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-lang/mono
	dev-dotnet/gtk-sharp"
RDEPEND="${DEPEND}"

src_install() {
	dobin vgmstream-cli
}
