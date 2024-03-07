EAPI=8

inherit meson

DESCRIPTION="thunk generator, used by fdpp for dosemu2"
HOMEPAGE="https://github.com/stsp/thunk_gen"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-main"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-lang/nasm
	sys-devel/bison
	dev-build/ninja
	sys-devel/flex
	>=dev-build/autoconf-2.57"
