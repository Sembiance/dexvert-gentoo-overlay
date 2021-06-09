EAPI=7

DESCRIPTION="Command line tool to investigate PE binaries"
HOMEPAGE="https://github.com/merces/pev"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-libs/libpe"
RDEPEND="${DEPEND}"

src_prepare() {
	set -- env \
	sed -i -E \
		-e '/^\s+cd \$\(LIBPE_DIR/d' \
		Makefile
	echo "$@"
	"$@" || die
	
	default

	local MY_PREFIX=${EPREFIX}/usr
	local MY_LIBDIR=$(get_libdir)

	set -- env \
	sed -i -E \
		-e "/^prefix/ s#(.*=[[:space:]]*).*#\1${MY_PREFIX}#" \
		-e "/^libdir/ s#(.*=[[:space:]]*).*#\1\$(exec_prefix)/${MY_LIBDIR}#" \
		-e 's/-L\$\(LIBPE\) //g' \
		-e 's/-I\$\(LIBPE\)\/include //g' \
		-e "/^export LIBPE = .+/d" \
		-e 's/-I"..\/include"/-I\$(realpath .)\/..\/include/g' \
		src/Makefile

	echo "$@"
	"$@" || die
}
