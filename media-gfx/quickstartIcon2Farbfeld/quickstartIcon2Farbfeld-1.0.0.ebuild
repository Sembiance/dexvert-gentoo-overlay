EAPI=8

DESCRIPTION="CLI tool that converts Quickstart ICN files to Farbfeld"
HOMEPAGE="https://www.uninformativ.de/blog/postings/2024-08-27/0/POSTING-en.html"
LICENSE="GPL"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	gcc -o quickstartIcon2Farbfeld quickstartIcon2Farbfeld.c
}

src_install() {
	dobin quickstartIcon2Farbfeld
}
