EAPI=7

inherit dotnet

DESCRIPTION="Ansi/Ascii text and RIPscrip vector graphic art converter"
HOMEPAGE="https://github.com/cwensley/pablodraw"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-main"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test network-sandbox"

DEPEND="dev-lang/mono
	sys-devel/clang
	dev-dotnet/gtk-sharp"
RDEPEND="${DEPEND}"

src_prepare() {
	default

	sed -i "s/g++/clang++/g" build/GCC.targets
}

src_compile() {
	export DOTNET_CLI_TELEMETRY_OPTOUT=1
	dotnet build Source/PabloDraw/PabloDraw.csproj
	dotnet build Source/PabloDraw.Console/PabloDraw.Console.cxproj
}

src_install() {
	into /opt/${PN}
    insinto /opt/${PN}

	doins artifacts/bin/PabloDraw/Debug/net6.0/linux-x64/*
	doins artifacts/bin/PabloDraw.Console/x64/Debug/*

	fperms 0755 /opt/${PN}/PabloDraw
	fperms 0755 /opt/${PN}/PabloDraw.Console

	dosym /opt/${PN}/PabloDraw /opt/bin/PabloDraw
	dosym /opt/${PN}/PabloDraw.Console /opt/bin/PabloDraw.Console
}

#pkg_postinst() {
#	elog "Due to bug: https://bugs.gentoo.org/733166"
#	elog "You need to run this as root, once:"
#	elog "cd /usr/lib/mono/gac"
#	elog 'for d in /usr/lib64/mono/gac/*; do ln -sf "$d" .; done'
#}
