EAPI=7

DESCRIPTION="Sofware library to read and write MXF files"
HOMEPAGE="http://ingex.sourceforge.net/libMXF/"
LICENSE="LGPL-2.1"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${PN}-src-${PV}.tgz"
S="${WORKDIR}/${PN}-src-${PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/fixBuildErrors.patch" )
