EAPI=7

DESCRIPTION="Convert vector graphic file formats like .cdr, .svg, wmf and more."
HOMEPAGE="https://sk1project.net/uc2/"
LICENSE="MIT"
APPIMAGE_FILENAME="uniconvertor-${PV}.AppImage"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${APPIMAGE_FILENAME}"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	exeinto /opt/uniconvertor

	doexe ${DISTDIR}/${APPIMAGE_FILENAME}
    dosym ../uniconvertor/${APPIMAGE_FILENAME} /opt/bin/uniconvertor
}
