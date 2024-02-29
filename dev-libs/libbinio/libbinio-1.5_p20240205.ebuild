EAPI=8

inherit autotools

DESCRIPTION="Platform-independent way to access binary data streams in C++"
HOMEPAGE="https://github.com/adplug/libbinio"
LICENSE="LGPL-2.1"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
    default

	sed -i "s/@value{VERSION}/${PV}/g" doc/libbinio.texi
	sed -i "s/@value{UPDATED}/${PV}/g" doc/libbinio.texi
	sed -i "/^@include version.texi/d" doc/libbinio.texi

    eautoreconf
}
