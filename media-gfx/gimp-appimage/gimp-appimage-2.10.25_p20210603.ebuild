EAPI=8

DESCRIPTION="GNU Image Manipulation Program - AppImage version with Resynthesizer plugin"
HOMEPAGE="https://github.com/aferrero2707/gimp-appimage"
LICENSE="MIT"
MY_PV="${PV/_p/-}"
APPIMAGE_FILENAME="GIMP_AppImage-git-${MY_PV}-withplugins-x86_64.AppImage"
SRC_URI="https://telparia.com/distfiles/compendium/${CATEGORY}/${PN}/${APPIMAGE_FILENAME}"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	exeinto /opt/gimp-appimage

	doexe ${DISTDIR}/${APPIMAGE_FILENAME}
    dosym ../gimp-appimage/${APPIMAGE_FILENAME} /opt/bin/mygimp
}
