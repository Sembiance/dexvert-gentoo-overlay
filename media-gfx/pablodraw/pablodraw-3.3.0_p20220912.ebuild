EAPI=8

DESCRIPTION="Ansi/Ascii text and RIPscrip vector graphic art converter"
HOMEPAGE="https://github.com/cwensley/pablodraw/releases"
LICENSE="MIT"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-main"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test network-sandbox"

DEPEND="dev-lang/mono
	dev-dotnet/gtk-sharp"
RDEPEND="${DEPEND}"

src_compile() {
	pwd
	dotnet build ./Source/PabloDraw/PabloDraw.csproj
}

src_install() {
	into /opt/${PN}
    insinto /opt/${PN}

	doins artifacts/bin/PabloDraw/Debug/net6.0/linux-x64/*

	fperms 0755 /opt/${PN}/PabloDraw
	dosym /opt/${PN}/PabloDraw /opt/bin/PabloDraw
}

pkg_postinst() {
	elog "Due to bug: https://bugs.gentoo.org/733166"
	elog "You MAY need to run this as root, once:"
	elog "cd /usr/lib/mono/gac"
	elog 'for d in /usr/lib64/mono/gac/*; do ln -sf "$d" .; done'
}
