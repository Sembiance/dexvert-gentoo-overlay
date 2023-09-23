EAPI=8

DESCRIPTION="Extracts .pp files compressed with PowerPacker"
HOMEPAGE="http://aminet.net/package/util/arc/ppunpack10-mos"
LICENSE="ppunpack-license"
MY_PV=$(ver_rs 1- '')
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}${MY_PV}-mos.tar.bz2"
S="${WORKDIR}/PPUnpack${PV}/sources"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
	default

	mv Makefile.UNIX Makefile
	sed -i "s/CC=acc/CC=gcc/" Makefile
}

src_compile() {
	emake ${PN}
}

src_install() {
	dobin ${PN}
}
