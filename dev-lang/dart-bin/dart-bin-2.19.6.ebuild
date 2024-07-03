EAPI=8

DESCRIPTION="The Dart SDK, including the VM, dart2js, core libraries, and more."
HOMEPAGE="https://dart.dev/get-dart/archive"
LICENSE="BSD"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/dart-sdk"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test strip"

RDEPEND="app-arch/unzip"
DEPEND=""

src_install() {
	mkdir "${ED}/opt" || die
	mv "${S}" "${ED}/opt/" || die
	dosym "/opt/dart-sdk/bin/dart" '/opt/bin/dart'
}
