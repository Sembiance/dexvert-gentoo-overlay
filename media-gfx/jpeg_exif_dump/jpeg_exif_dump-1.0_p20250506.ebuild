EAPI=8

DESCRIPTION="Command line tool to dump data from a JPG"
HOMEPAGE="https://github.com/nico/hack/blob/main/jpeg_exif_dump.c"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_compile() {
	gcc -o jpeg_exif_dump -lm jpeg_exif_dump.c
}

src_install() {
	dobin jpeg_exif_dump
}
