EAPI=7

inherit autotools

DESCRIPTION="Parser library for the ILBM: IFF Interleaved BitMap format"
HOMEPAGE="https://github.com/svanderburg/libilbm"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libiff"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/broken_man_gen.patch" )

src_prepare() {
	default

	eautoreconf
}

src_compile() {
	default

	help2man --output=ilbmpp.1 --no-info --name "Displays a textual representation of an IFF/ILBM file on the standard output" --libtool src/ilbmpp/ilbmpp
	help2man --output=ilbmpack.1 --no-info --name "Compress or decompress ILBM images inside an IFF file" --libtool src/ilbmpack/ilbmpack
	help2man --output=ilbm2acbm.1 --no-info --name "Convert all ILBM images inside an IFF file to ACBM images" --libtool src/ilbm2acbm/ilbm2acbm
	help2man --output=acbm2ilbm.1 --no-info --name "Convert all ACBM images inside an IFF file to ILBM images" --libtool src/acbm2ilbm/acbm2ilbm
}

src_install() {
	default

	doman ilbmpp.1
	doman ilbmpack.1
	doman ilbm2acbm.1
	doman acbm2ilbm.1
}
