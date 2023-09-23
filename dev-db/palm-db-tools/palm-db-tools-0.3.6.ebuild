EAPI=8

DESCRIPTION="Conversion utilities for the PalmOS flat-file database programs"
HOMEPAGE="https://sourceforge.net/projects/palm-db-tools/files/palm-db-tools/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

S="${WORKDIR}/${PN}"

PATCHES=( "${FILESDIR}/compileErrors.patch" )

src_configure() {
	sed -i "s/-Wall -Werror/-fPIC/g" configure configure.in

	default
}

src_install() {
	dolib.so flatfile/libpdbtools.so
    dobin flatfile/csv2pdb
	dobin flatfile/pdb2csv
}
