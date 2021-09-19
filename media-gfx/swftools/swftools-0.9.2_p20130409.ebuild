EAPI=7

DESCRIPTION="SWF Tools is a collection of SWF manipulation and generation utilities"
HOMEPAGE="http://www.swftools.org/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz
	https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/swftools_0.9.2+git20130725-4.1.debian.tar.xz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="
	media-libs/freetype:2
	media-libs/giflib:0=
	>=media-libs/t1lib-1.3.1:5
	virtual/jpeg:0"
DEPEND="${RDEPEND}
	!<media-libs/ming-0.4.0_rc2"

S="${WORKDIR}/${PN}-2013-04-09-1007"

src_prepare() {
	default
	eapply "${FILESDIR}/${PN}-0.9.2_giflib.patch" "${FILESDIR}/${PN}-0.9.2_extern.patch" "${WORKDIR}"/debian/patches
	echo >lib/python/Makefile.in
}

src_install() {
	emake prefix="$D/usr" datadir="$D/usr/share" infodir="$D/usr/share/info" localstatedir="$D/var/lib" mandir="$D/usr/share/man" sysconfdir="$D/etc"  install
	dodoc AUTHORS ChangeLog
}
