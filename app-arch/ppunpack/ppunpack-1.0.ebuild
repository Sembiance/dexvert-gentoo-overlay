EAPI=7

DESCRIPTION="Extracts .pp files compressed with PowerPacker"
HOMEPAGE="http://aminet.net/package/util/arc/ppunpack10-mos"
MY_PV=$(ver_rs 1- '')
SRC_URI="http://aminet.net/util/arc/${PN}${MY_PV}-mos.lha"

LICENSE="ppunpack-license"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

S="${WORKDIR}/PPUnpack${PV}/sources"

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
