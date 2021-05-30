EAPI=4

DESCRIPTION="A library to find similar pictures"
HOMEPAGE="http://www.pureftpd.org/project/libpuzzle"
SRC_URI="http://download.pureftpd.org/pub/pure-ftpd/misc/libpuzzle/releases/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 ~s390 sparc x86 ~amd64-fbsd ~amd64-linux ~x86-linux ~x64-macos"
IUSE=""

rc_configure() {
    econf
}

src_install() {
	emake DESTDIR="${D}" install
}
