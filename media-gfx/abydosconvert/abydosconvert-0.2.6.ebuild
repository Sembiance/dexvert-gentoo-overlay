EAPI=7

inherit git-r3 cmake-utils

DESCRIPTION="CLI tool that uses abydos lib to convert images"
HOMEPAGE="https://github.com/Sembiance/abydosconvert"
EGIT_REPO_URI="https://github.com/Sembiance/abydosconvert.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="=media-libs/abydos-${PV}"
RDEPEND=${DEPEND}

RESTRICT="mirror"

src_install() {
	dobin ${BUILD_DIR}/src/abydosconvert
}
