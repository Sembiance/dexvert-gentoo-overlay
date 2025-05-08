# For why this exists, see: /mnt/compendium/sys/etc/portage/package.mask/xkeyboard-config
EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
inherit meson python-any-r1

DESCRIPTION="X keyboard configuration database"
HOMEPAGE="https://www.freedesktop.org/wiki/Software/XKeyboardConfig https://gitlab.freedesktop.org/xkeyboard-config/xkeyboard-config"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.bz2"

SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	${PYTHON_DEPS}
	dev-libs/libxslt
	sys-devel/gettext"

pkg_setup() {
	python-any-r1_pkg_setup
}

src_configure() {
	local emesonargs=(
		-Dxkb-base="${EPREFIX}/usr/share/X11/xkb"
		-Dcompat-rules=true
	)
	meson_src_configure
}
