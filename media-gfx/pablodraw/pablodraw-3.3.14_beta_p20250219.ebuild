EAPI=8

DOTNET_PKG_COMPAT=9.0
NUGETS="
	atksharp@3.24.24.95
	cairosharp@3.24.24.95
	eto.forms@2.9.0
	eto.platform.gtk@2.9.0
	gdksharp@3.24.24.95
	giosharp@3.24.24.95
	glibsharp@3.24.24.95
	gtksharp@3.24.24.95
	lidgren.network@1.0.2
	microsoft.netcore.platforms@1.1.0
	mono.nat@3.0.4
	netstandard.library@2.0.3
	newtonsoft.json@13.0.3
	pangosharp@3.24.24.95
	sharpcompress@0.32.2
	system.buffers@4.5.1
	system.componentmodel.annotations@5.0.0
	system.memory@4.5.4
	system.memory@4.5.5
	system.numerics.vectors@4.4.0
	system.runtime.compilerservices.unsafe@4.5.3
	system.runtime.compilerservices.unsafe@6.0.0
	system.text.encoding.codepages@6.0.0
	system.text.encoding.codepages@9.0.0
"
inherit dotnet-pkg
DOTNET_PKG_PROJECTS=( Source/PabloDraw/PabloDraw.csproj )

DESCRIPTION="Ansi/Ascii text and RIPscrip vector graphic art converter"
HOMEPAGE="https://github.com/cwensley/pablodraw"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip
	${NUGET_URIS}"
S="${WORKDIR}/${PN}-main"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-lang/mono
	dev-dotnet/dotnet-sdk-bin:8.0
	dev-dotnet/gtk-sharp"
RDEPEND="${DEPEND}"

src_install() {
	dotnet-pkg-base_install
	dotnet-pkg-base_dolauncher "/usr/share/${P}/PabloDraw" "PabloDraw"
}

