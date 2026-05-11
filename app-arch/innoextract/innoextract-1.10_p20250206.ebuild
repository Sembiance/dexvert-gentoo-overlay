EAPI=8
inherit cmake

DESCRIPTION="A tool to unpack installers created by Inno Setup"
HOMEPAGE="https://github.com/dscharrer/innoextract"
LICENSE="GPL"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="app-arch/xz-utils
	dev-libs/boost"
RDEPEND="${DEPEND}"
