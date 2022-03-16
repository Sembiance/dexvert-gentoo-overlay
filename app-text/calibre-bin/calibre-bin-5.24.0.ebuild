EAPI=7

inherit xdg

DESCRIPTION="Calibre is an ebook management software"
HOMEPAGE="https://calibre-ebook.com"
LICENSE="GPL-3"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/calibre-${PV}-x86_64.txz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

QA_PREBUILT="/opt/calibre-${PV}/*"

src_install() {
	XDG_DATA_DIRS="${D}/usr/share"
	dodir /opt/calibre-${PV}
	dodir /usr/share/applications
	dodir /usr/share/icons/hicolor
	dodir /usr/share/desktop-directories
	dodir /usr/share/mime/packages

	cp -r ${S}/* ${D}/opt/calibre-${PV}/
	#newinitd "${FILESDIR}"/calibre-server-3.init calibre-server
	#newconfd "${FILESDIR}"/calibre-server-3.conf calibre-server

	${D}/opt/calibre-${PV}/calibre_postinstall --root=${D}/usr
	rm ${D}/opt/calibre-${PV}/calibre{*install,-complete}

	cat <<- EOF > ${T}/calibre.symlink
		#!/bin/sh

		export QT_QPA_PLATFORM_PLUGIN_PATH=/opt/calibre-${PV}/plugins
		export LD_LIBRARY_PATH=/opt/calibre-${PV}/lib:$LD_LIBRARY_PATH

		/opt/calibre-${PV}/calibre --no-update-check \$@
		EOF

	for file in ${D}/opt/calibre-${PV}/*; do
		[ -f ${file} ] && dosym ${file/${D}/} /usr/bin/$(basename ${file})
	done
	newbin ${T}/calibre.symlink calibre
}
