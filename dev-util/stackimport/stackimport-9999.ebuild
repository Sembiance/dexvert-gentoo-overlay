EAPI=7

inherit git-r3

DESCRIPTION="CLI tool that extracts data from HyperCard stacks"
HOMEPAGE="https://github.com/uliwitness/stackimport/"
EGIT_REPO_URI="https://github.com/uliwitness/stackimport.git"

LICENSE="stackimport-license"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=${DEPEND}

RESTRICT="mirror"
PATCHES=( "${FILESDIR}/fixCoreDump.patch" )

src_compile() {
	g++ -o stackimport woba.cpp Tests.cpp picture.cpp main.cpp CStackFile.cpp CBuf.cpp byteutils.cpp -std=gnu++11
}

src_install() {
	dobin stackimport
}
