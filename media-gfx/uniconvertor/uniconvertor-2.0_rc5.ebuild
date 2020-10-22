EAPI=7

DESCRIPTION="Convert vector graphic file formats like .cdr, .svg, wmf and more."
HOMEPAGE="https://sk1project.net/uc2/"

APPIMAGE_FILENAME="uniconvertor-${PV}.AppImage"
SRC_URI="https://github.com/sembiance/dexvert/raw/master/bin/${APPIMAGE_FILENAME}"

S="${WORKDIR}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="mirror"

src_install() {
	exeinto /opt/uniconvertor

	doexe ${DISTDIR}/${APPIMAGE_FILENAME}
    dosym ../uniconvertor/${APPIMAGE_FILENAME} /opt/bin/uniconvertor
}
