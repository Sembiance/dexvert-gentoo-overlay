EAPI=7

DESCRIPTION="Convert more than 500 image formats"
HOMEPAGE="https://www.xnview.com/en/nconvert/"
SRC_URI="http://download.xnview.com/NConvert-linux64.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RESTRICT="mirror"

S="${WORKDIR}/NConvert"

src_install() {
    dobin ${PN}
}
