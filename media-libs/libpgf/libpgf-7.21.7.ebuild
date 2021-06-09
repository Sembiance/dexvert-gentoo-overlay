EAPI=7

inherit autotools

DESCRIPTION="Library to load, handle and manipulate images in the PGF format"
HOMEPAGE="https://www.libpgf.org/"
LICENSE="LGPL-2.1"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="doc"

BDEPEND="
	app-arch/unzip
	doc? ( app-doc/doxygen )"

src_prepare() {
	default

	# configure.ac has wrong version number
	sed -i 's/7.15.32/7.21.7/g' configure.ac || die

	if ! use doc; then
		sed -i -e "/HAS_DOXYGEN/{N;N;d}" Makefile.am || die
	fi

	find . -name \*.m4|xargs dos2unix
	find . -name \*.ac|xargs dos2unix
	find . -name \*.am|xargs dos2unix

	eautoreconf
}

src_configure() {
	econf --disable-static
}
