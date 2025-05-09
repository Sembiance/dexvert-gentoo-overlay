EAPI=8

inherit autotools

DESCRIPTION="Extract files from Amiga adf disk images"
HOMEPAGE="https://github.com/adflib/ADFlib"
LICENSE="|| ( GPL-2+ LGPL-2.1+ )"
MY_PN="ADFlib"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${MY_PN}-citest"	# The citest is just temporary for this branch, remove on next release

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
	default
	eautoreconf
}

src_install() {
	default
	find "${ED}" -name '*.la' -delete || die
}
