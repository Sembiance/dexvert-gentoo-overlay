EAPI=8

inherit meson

DESCRIPTION="Set of tools to deal with specially encoded Macintosh files"
HOMEPAGE="https://github.com/wnayes/macutils"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"
