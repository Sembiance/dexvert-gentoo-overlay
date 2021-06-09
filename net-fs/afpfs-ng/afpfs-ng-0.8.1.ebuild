EAPI=7

inherit autotools

DESCRIPTION="AFP filesystem clients"
HOMEPAGE="http://sourceforge.net/projects/${PN}/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.bz2"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="crypt fuse readline"

DOCS="ChangeLog docs/README NEWS"

PATCHES=( "${FILESDIR}/extern_full_url.patch" "${FILESDIR}/afpfs-ng-0.8.1-pointer.patch" "${FILESDIR}/offset.patch" )

RDEPEND="
	crypt? ( >=dev-libs/libgcrypt-1.4.0 dev-libs/gmp )
	fuse? ( >=sys-fs/fuse-2.7.0 )
	readline? ( sys-libs/readline )"

src_prepare() {
	default
	sed -i -e 's/$echo/$ECHO/' ltmain.sh || die
	eautoreconf
}

src_configure() {
	# TODO: make USE flags not automagic.
	econf --disable-static
}
