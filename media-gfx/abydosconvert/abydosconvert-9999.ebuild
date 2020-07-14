EAPI=7

inherit git-r3 cmake-utils

DESCRIPTION="CLI tool that uses abydos lib to convert images"
HOMEPAGE="https://github.com/Sembiance/abydosconvert"
EGIT_REPO_URI="https://github.com/Sembiance/abydosconvert.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"

#src_compile() {
#	g++ -o stackimport woba.cpp Tests.cpp picture.cpp main.cpp CStackFile.cpp CBuf.cpp byteutils.cpp -std=gnu++11
#}

src_install() {
	dobin ${BUILD_DIR}/src/abydosconvert
}
