EAPI=8

inherit autotools

DESCRIPTION="Portable, extensible parser for the Interchange File Format (IFF)"
HOMEPAGE="https://github.com/svanderburg/libiff"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/broken_man_gen.patch" )

src_prepare() {
	default

	eautoreconf
}

src_compile() {
	default

	help2man --output=iffjoin.1 --no-info --name "Joins an arbitrary number of IFF files into a single concatenation IFF file" --libtool src/iffjoin/iffjoin
	help2man --output=iffpp.1 --no-info --name "IFF pretty printer" --libtool src/iffpp/iffpp
}

src_install() {
	default

	doman iffjoin.1
	doman iffpp.1
}
