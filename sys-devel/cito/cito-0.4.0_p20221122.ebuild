EAPI=8

DESCRIPTION="Ć Translator"
HOMEPAGE="https://github.com/pfusik/cito"
LICENSE="GPL-3"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test network-sandbox"

DEPEND="virtual/dotnet-sdk"
RDEPEND="${DEPEND}"

src_compile() {
	addpredict /opt/dotnet-sdk-bin-6.0/metadata/
	default
}

src_install() {
	dobin bin/Debug/net6.0/cito
	dobin bin/Debug/net6.0/cito.dll
	dobin bin/Debug/net6.0/cito.deps.json
	dobin bin/Debug/net6.0/cito.runtimeconfig.json
}
