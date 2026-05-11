EAPI=8

inherit autotools

DESCRIPTION="Set of libraries and utilities for reading Microsoft Access database (MDB) files"
HOMEPAGE="https://github.com/mdbtools/mdbtools"
LICENSE="GPL-2 LGPL-2.1"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}/${PN}"

SLOT="0/3"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="glib iconv odbc"

BDEPEND="
	app-text/txt2man
	sys-devel/bison
	sys-devel/flex
	sys-apps/which
	virtual/pkgconfig
"
RDEPEND="
	sys-libs/ncurses:=
	sys-libs/readline:=
	glib? ( >=dev-libs/glib-2.68:2 )
	iconv? ( virtual/libiconv )
	odbc? ( >=dev-db/unixODBC-2.0 )
"
DEPEND="${RDEPEND}"

src_prepare() {
	default

	eautoreconf
}

src_configure() {
	# bug #915495
	unset YACC LEX

	econf \
		$(use_enable glib) \
		$(use_enable iconv) \
		$(use odbc && echo "--with-unixodbc=${EPREFIX}/usr")
}

src_install() {
	default

	find "${ED}" -name '*.la' -delete || die
}

