EAPI=8

DESCRIPTION="CLI tools to manipulate Z-Machine files"
HOMEPAGE="https://www.inform-fiction.org/zmachine/ztools.html"
LICENSE="CC-BY-SA-4.0"
MY_PV="${PV//./}"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}${MY_PV}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	dobin txd
	doman txd.1

	dobin pix2gif
	doman pix2gif.1

	dobin infodump
	doman infodump.1
}
