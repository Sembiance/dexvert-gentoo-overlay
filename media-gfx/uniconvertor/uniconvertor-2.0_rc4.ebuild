# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 xdg-utils

DESCRIPTION="Convert vector graphic file formats like .cdr, .svg, wmf and more."
HOMEPAGE="https://sk1project.net/uc2/"
SRC_URI="https://downloads.sk1project.net/uniconvertor/2.0rc4/uniconvertor-2.0rc4.tar.gz"

KEYWORDS="~amd64"
SLOT="0"
LICENSE="GPL-3"
IUSE=""
RESTRICT="mirror test"

RDEPEND="
	sys-devel/gettext
	dev-python/pycairo[${PYTHON_USEDEP}]
	media-gfx/imagemagick:=
	media-libs/lcms:2
	x11-libs/pango
	dev-python/reportlab
	dev-python/pillow[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	app-text/ghostscript-gpl"

S="${WORKDIR}/uniconvertor-2.0rc4"

python_prepare_all() {
	mv setup-uc2.py setup.py

	distutils-r1_python_prepare_all
}
