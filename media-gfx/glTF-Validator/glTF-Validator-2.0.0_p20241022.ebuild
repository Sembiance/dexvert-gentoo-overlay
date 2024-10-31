EAPI=8

DESCRIPTION="Tool to validate glTF assets."
HOMEPAGE="https://github.com/KhronosGroup/glTF-Validator"
LICENSE="Apache 2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-main"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test network-sandbox strip"

DEPEND="<dev-lang/dart-bin-3.0.0"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	dart pub get
}

src_compile() {
	dart run grinder exe
}

src_install() {
	dobin build/bin/gltf_validator
}
