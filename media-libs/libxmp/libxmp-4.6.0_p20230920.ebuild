EAPI=8

inherit autotools

DESCRIPTION="Extended Module Player library"
HOMEPAGE="https://github.com/libxmp/libxmp"
LICENSE="LGPL-2.1"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

BDEPEND="virtual/pkgconfig"

PATCHES=( "${FILESDIR}/enable_gtk-4.6.patch" )

src_prepare() {
	cp src/bitrot/loaders/gtk_load.c src/loaders/
	default

	eautoreconf
}
