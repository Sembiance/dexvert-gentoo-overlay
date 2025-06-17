EAPI=8

DESCRIPTION="Wysiwyg text processor with high-quality maths"
HOMEPAGE="https://www.texmacs.org/tmweb/download/linux.en.html"
LICENSE="GPL-3"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/TeXmacs-${PV}-C.tar.gz"
S="${WORKDIR}/TeXmacs-${PV}-x86_64-pc-linux-gnu/TeXmacs"

DEPEND="
	${GUILE_DEPS}
	app-text/ghostscript-gpl
	media-libs/freetype
	x11-apps/xmodmap
	x11-libs/libXext
	x11-base/xorg-proto
	virtual/latex-base
	dev-db/sqlite
	virtual/imagemagick-tools[jpeg]
	media-libs/netpbm
	app-text/aspell
	|| ( media-gfx/inkscape gnome-base/librsvg:2 )"
RDEPEND="${DEPEND}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test strip binchecks"

src_install() {
	sed -i 's/prefix="\/usr\/local"/prefix="\/usr"/' bin/texmacs

	dobin bin/fig2ps
	dobin bin/texmacs
	dobin bin/tm_gs

	doheader include/TeXmacs.h

	into /usr/libexec/TeXmacs
	dobin bin/texmacs.bin

	insinto /usr/share/TeXmacs
	doins COPYING INSTALL LICENSE README SVNREV TEX_FONTS
	doins -r doc examples fonts langs misc packages plugins progs styles texts
}