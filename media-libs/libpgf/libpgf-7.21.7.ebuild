# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="Library to load, handle and manipulate images in the PGF format"
HOMEPAGE="https://www.libpgf.org/"
SRC_URI="https://downloads.sourceforge.net/project/libpgf/libpgf/${PV}/${PN}.zip -> ${P}.zip"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE="doc"

BDEPEND="
	app-arch/unzip
	doc? ( app-doc/doxygen )"

S="${WORKDIR}/${PN}"

src_prepare() {
	default

	# configure.ac has wrong version number
	sed -i 's/7.15.32/7.21.7/g' configure.ac || die

	if ! use doc; then
		sed -i -e "/HAS_DOXYGEN/{N;N;d}" Makefile.am || die
	fi

	find . -name \*.m4|xargs dos2unix
	find . -name \*.ac|xargs dos2unix
	find . -name \*.am|xargs dos2unix

	eautoreconf
}

src_configure() {
	econf --disable-static
}
