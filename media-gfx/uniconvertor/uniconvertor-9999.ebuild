EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )

inherit distutils-r1 xdg-utils git-r3

DESCRIPTION="Convert vector graphic file formats like .cdr, .svg, wmf and more."
HOMEPAGE="https://sk1project.net/uc2/"

EGIT_REPO_URI="https://github.com/sk1project/uniconvertor"
EGIT_BRANCH="py3"

SLOT="0"
LICENSE="GPL-3"
IUSE=""
RESTRICT="mirror test network-sandbox"

RDEPEND="
	sys-devel/gettext
	dev-python/pycairo[${PYTHON_USEDEP}]
	media-gfx/imagemagick:=
	media-libs/lcms:2
	x11-libs/pango
	dev-python/pillow[${PYTHON_USEDEP}]"

DEPEND="${RDEPEND}
	virtual/pkgconfig
	app-text/ghostscript-gpl"

PATCHES=( "${FILESDIR}/py3.patch" )

python_prepare_all() {
	mkdir subproj
	cd subproj
	git clone https://github.com/sk1project/build-utils
	cd build-utils
	git checkout py3
	cd ../..
	ln -s ./subproj/build-utils/src/utils utils

	distutils-r1_python_prepare_all
}
