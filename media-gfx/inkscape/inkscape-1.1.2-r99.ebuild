EAPI=8

# NOTE: We don't rename it inkscape-appimage or install /opt/bin/myinkscape because some packages require inkscape
# Latest 1.2 inkscape requires clicking a dialog to do certain command line conversions: https://gitlab.com/inkscape/inkscape/-/issues/3524
# Until that bug is fixed, use are fixed on inkscape 1.x and sadly it no longer compiles with latest poppler lib on gentoo system so we use AppImage

DESCRIPTION="SVG based generic vector-drawing program"
HOMEPAGE="https://inkscape.org/release/all/gnulinux/appimage/"
LICENSE="MIT"
APPIMAGE_FILENAME="Inkscape-0a00cf5-x86_64.AppImage"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${APPIMAGE_FILENAME}"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	exeinto /opt/${PN}

	doexe ${DISTDIR}/${APPIMAGE_FILENAME}
    dosym ../${PN}/${APPIMAGE_FILENAME} /opt/bin/${PN}
}
