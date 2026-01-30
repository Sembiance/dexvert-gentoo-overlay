EAPI=8

DOTNET_PKG_COMPAT=10.0
NUGETS="
	blake3@1.1.0
	blake3@2.0.0
	bouncycastle.netcore@1.9.0
	bouncycastle.netcore@2.2.1
	grindcore.sharpcompress@0.41.1
	grindcore@0.6.2
	microsoft.bcl.asyncinterfaces@10.0.0
	microsoft.netframework.referenceassemblies.net20@1.0.3
	microsoft.netframework.referenceassemblies.net35@1.0.3
	microsoft.netframework.referenceassemblies.net40@1.0.3
	microsoft.netframework.referenceassemblies.net452@1.0.3
	microsoft.netframework.referenceassemblies.net462@1.0.3
	microsoft.netframework.referenceassemblies.net472@1.0.3
	microsoft.netframework.referenceassemblies.net48@1.0.3
	microsoft.netframework.referenceassemblies@1.0.3
	netlegacysupport.numerics@1.0.1
	newtonsoft.json@13.0.4
	sabretools.commandline@1.4.0
	sabretools.hashing@1.6.0
	sabretools.io@1.9.0
	sabretools.serialization@2.2.1
	system.buffers@4.6.1
	system.io.hashing@10.0.0
	system.memory@4.6.3
	system.numerics.vectors@4.6.1
	system.runtime.compilerservices.unsafe@6.1.2
	system.text.encoding.codepages@10.0.0
	system.threading.tasks.extensions@4.6.3
	system.valuetuple@4.6.1
"
inherit dotnet-pkg
DOTNET_PKG_PROJECTS=( WiseUnpacker/WiseUnpacker.csproj )

DESCRIPTION="C# Wise installer unpacker based on HWUN and E_WISE"
HOMEPAGE="https://github.com/mnadareski/WiseUnpacker"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip
	${NUGET_URIS}"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-lang/mono
	dev-dotnet/dotnet-sdk-bin:10.0"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	sed -i -e 's#<TargetFrameworks>.*</TargetFrameworks>#<TargetFramework>net10.0</TargetFramework>#' WiseUnpacker/WiseUnpacker.csproj || die
}

src_install() {
	dotnet-pkg-base_install
	dotnet-pkg-base_dolauncher "/usr/share/${P}/WiseUnpacker" "WiseUnpacker"
}

