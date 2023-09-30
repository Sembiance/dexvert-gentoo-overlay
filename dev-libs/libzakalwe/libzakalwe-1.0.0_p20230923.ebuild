EAPI=8

DESCRIPTION="Library used by uade"
HOMEPAGE="https://gitlab.com/hors/libzakalwe"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
	sed -i "s/CC = cgcc/CC = gcc/g" Makefile

	default
}

src_install() {
	mkdir -p "${ED}/usr/lib" "${ED}/usr/include"
	emake install PREFIX="${ED}/usr"
	mv "${ED}/usr/lib" "${ED}/usr/lib64"
}
