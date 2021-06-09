EAPI=7

inherit autotools

DESCRIPTION="Extended Module Player CLI"
HOMEPAGE="http://xmp.sourceforge.net/"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-cli-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

IUSE="alsa oss pulseaudio"

RDEPEND="alsa? ( >=media-libs/alsa-lib-1.0.27.2 )
	pulseaudio? ( >=media-sound/pulseaudio-5.0 )"
DEPEND="${RDEPEND}
	>=media-libs/libxmp-4.4.1
	oss? ( virtual/os-headers )"

src_prepare() {
	default

	eautoreconf
}

src_configure() {
	ECONF_SOURCE=${S} \
	econf \
		$(use_enable alsa) \
		$(use_enable oss) \
		$(use_enable pulseaudio)
}
