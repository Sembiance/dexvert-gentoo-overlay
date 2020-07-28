EAPI=7

DESCRIPTION="Console based player for AdLib era files"
HOMEPAGE="https://github.com/adplug/${PN}-unix"
SRC_URI="https://github.com/adplug/${PN}-unix/releases/download/v${PV}/${PN}-${PV}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="media-libs/adplug"
DEPEND="${RDEPEND}"
RESTRICT="mirror"
