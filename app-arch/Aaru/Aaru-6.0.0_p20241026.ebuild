EAPI=8

DESCRIPTION="Aaru Data Preservation Suite"
HOMEPAGE="https://github.com/aaru-dps/Aaru"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-devel"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test network-sandbox strip"

DEPEND="dev-lang/mono
	dev-dotnet/dotnet-sdk-bin:8.0"
RDEPEND="${DEPEND}"

src_compile() {
	dotnet build --configuration Release ./Aaru/Aaru.csproj
}

src_install() {
	into /opt/${PN}
    insinto /opt/${PN}

	doins -r Aaru/bin/Release/net*/*

	fperms 0755 /opt/${PN}/aaru
	dosym /opt/${PN}/aaru /opt/bin/aaru
}
