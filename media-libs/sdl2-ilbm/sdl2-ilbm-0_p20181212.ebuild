EAPI=8

inherit autotools

DESCRIPTION="A library and viewer for handling ILBM images in SDL applications"
HOMEPAGE="https://github.com/svanderburg/SDL_ILBM"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/SDL_ILBM-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="media-libs/libiff
	media-libs/libilbm
	media-libs/libamivideo
	media-libs/libilbm
	media-libs/libsdl2"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/broken_man_gen.patch" )

src_prepare() {
	default

	eautoreconf
}

src_compile() {
	default

	help2man --output=ilbmviewer.1 --no-info --name "View a collection of ILBM images inside an IFF file" --libtool src/ilbmviewer/ilbmviewer
}

src_install() {
	default

	doman ilbmviewer.1
}
