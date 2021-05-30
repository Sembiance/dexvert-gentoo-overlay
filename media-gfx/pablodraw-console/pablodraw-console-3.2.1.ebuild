EAPI=7

DESCRIPTION="Ansi/Ascii text and RIPscrip vector graphic art converter"
HOMEPAGE="http://picoe.ca/products/pablodraw/"
SRC_URI="https://github.com/cwensley/pablodraw/releases/download/${PV}/PabloDraw.Console-${PV}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/mono
	dev-dotnet/gtk-sharp"
RDEPEND="${DEPEND}"

RESTRICT="mirror test"

S="${WORKDIR}"

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
