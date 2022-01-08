EAPI=7

DESCRIPTION="The no nonsense TFTP/FTP server"
HOMEPAGE="https://github.com/troglobit/uftpd/releases"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND=">=dev-libs/libite-1.5
	>=dev-libs/libuev-2.2"
RDEPEND=${DEPEND}
