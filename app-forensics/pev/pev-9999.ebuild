EAPI=7

inherit git-r3

EGIT_REPO_URI="https://github.com/merces/${PN}"
EGIT_SUBMODULES=( lib/libpe )

DESCRIPTION="Command line tool to investigate PE binaries"
HOMEPAGE="https://github.com/merces/pev"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

RESTRICT="mirror test"

src_prepare() {
	default

	local MY_PREFIX=${EPREFIX}/usr
	local MY_LIBDIR=$(get_libdir)

	set -- env \
	sed -i -E \
		-e "/^prefix/ s#(.*=[[:space:]]*).*#\1${MY_PREFIX}#" \
		-e "/^libdir/ s#(.*=[[:space:]]*).*#\1\$(exec_prefix)/${MY_LIBDIR}#" \
		lib/libpe/Makefile
	echo "$@"
	"$@" || die

	set -- env \
	sed -i -E \
		-e "/^prefix/ s#(.*=[[:space:]]*).*#\1${MY_PREFIX}#" \
		-e "/^libdir/ s#(.*=[[:space:]]*).*#\1\$(exec_prefix)/${MY_LIBDIR}#" \
		src/Makefile
	echo "$@"
	"$@" || die
}
