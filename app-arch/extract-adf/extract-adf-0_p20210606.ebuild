EAPI=8

DESCRIPTION="Tools to extract ADF files"
HOMEPAGE="https://github.com/mist64/extract-adf"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( ${FILESDIR}"/header-includes.patch" ${FILESDIR}"/segfault-fix.patch" )

src_install() {
	dobin extract-adf
}
