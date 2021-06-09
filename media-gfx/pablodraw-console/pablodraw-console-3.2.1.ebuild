EAPI=7

DESCRIPTION="Ansi/Ascii text and RIPscrip vector graphic art converter"
HOMEPAGE="http://picoe.ca/products/pablodraw/"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-lang/mono
	dev-dotnet/gtk-sharp"
RDEPEND="${DEPEND}"

src_install() {
	into /opt/${PN}
    insinto /opt/${PN}

	doins PabloDraw.Console.exe

	newbin "${FILESDIR}"/pablodraw-console pablodraw-console
	dosym /opt/${PN}/bin/pablodraw-console /opt/bin/pablodraw-console
}

pkg_postinst() {
	elog "Due to bug: https://bugs.gentoo.org/733166"
	elog "You need to run this as root, once:"
	elog "cd /usr/lib/mono/gac"
	elog 'for d in /usr/lib64/mono/gac/*; do ln -sf "$d" .; done'
}
