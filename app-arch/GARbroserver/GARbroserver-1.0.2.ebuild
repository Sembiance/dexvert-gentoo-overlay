EAPI=8

DOTNET_PKG_COMPAT=10.0
NUGETS="
	bcnencoder.net@2.2.1
	communitytoolkit.highperformance@8.4.0
	microsoft.bcl.numerics@10.0.3
	microsoft.win32.systemevents@9.0.4
	naudio.asio@2.2.1
	naudio.core@2.2.1
	naudio.midi@2.2.1
	naudio.wasapi@2.2.1
	naudio.winmm@2.2.1
	naudio@2.2.1
	newtonsoft.json@13.0.4
	nvorbis@0.10.5
	sharpziplib@1.4.2
	sixlabors.imagesharp@3.1.12
	snappier@1.3.0
	system.componentmodel.composition@9.0.4
	system.drawing.common@9.0.4
	system.io.packaging@9.0.4
	system.text.encoding.codepages@9.0.4
	zstdsharp.port@0.8.7
"
inherit dotnet-pkg
DOTNET_PKG_PROJECTS=(
	server/GARbro.Server/GARbro.Server.csproj
	server/GARbro.Proxy/GARbro.Proxy.csproj
)

DESCRIPTION="Visual Novels resource detector and extractor"
HOMEPAGE="https://github.com/shiikwi/GARbro"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz
	${NUGET_URIS}"
S="${WORKDIR}/GARbro"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-lang/mono
	dev-dotnet/dotnet-sdk-bin:10.0"
RDEPEND="${DEPEND}"

src_install() {
	dotnet-pkg-base_install
	dotnet-pkg-base_dolauncher "/usr/share/${P}/GARbro.Proxy" "GARbro.Proxy"
	dotnet-pkg-base_dolauncher "/usr/share/${P}/GARbro.Server" "GARbro.Server"
}

