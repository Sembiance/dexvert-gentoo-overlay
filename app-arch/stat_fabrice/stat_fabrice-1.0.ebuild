EAPI=8

DESCRIPTION="Simple PPM compression tool by Fabrice Bellard"
HOMEPAGE="https://bellard.org/stat/"
LICENSE="GPL-2"
MY_PN="stat-${PV}"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_PN}.tgz"
S="${WORKDIR}/${MY_PN}/src"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/newlines.patch" )

src_install() {
	mv stat stat_fabrice
	dobin stat_fabrice
}
