EAPI=8

DESCRIPTION="A simple but powerful C++ interface to libpng"
HOMEPAGE="http://www.nongnu.org/pngpp/"
LICENSE="BSD"
MY_P=${P/pp/++}
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${MY_P}.tar.gz"
S="${WORKDIR}/${MY_P}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="media-libs/libpng:0"
DEPEND=""

PATCHES=( "${FILESDIR}"/${PN}-0.2.9-DESTDIR.patch )

src_compile() { :; }
src_test() { :; }

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install-headers
	einstalldocs

	docinto examples
	dodoc example/*.cpp
	docompress -x /usr/share/doc/${PF}/examples
}
