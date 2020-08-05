EAPI=7

DESCRIPTION="Hardware-independent AdLib sound player library"
HOMEPAGE="http://adplug.github.io/"
SRC_URI="https://github.com/${PN}/${PN}/releases/download/${PN}-${PV}/${PN}-${PV}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-libs/libbinio"
DEPEND="${RDEPEND}"
RESTRICT="mirror"
