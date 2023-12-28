EAPI=8

inherit autotools

DESCRIPTION="gtk bindings for mono"
HOMEPAGE="https://download.mono-project.com/sources/gtk-sharp212/"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="2"
KEYWORDS="~amd64 ~ppc ~x86"
RESTRICT="mirror test"

IUSE=""
RDEPEND="
	>=dev-lang/mono-3.0
	x11-libs/pango
	>=dev-libs/glib-2.31
	dev-libs/atk
	x11-libs/gtk+:2
	gnome-base/libglade
	dev-perl/XML-LibXML
	!dev-dotnet/gtk-sharp-gapi
	!dev-dotnet/gtk-sharp-docs
	!dev-dotnet/gtk-dotnet-sharp
	!dev-dotnet/gdk-sharp
	!dev-dotnet/glib-sharp
	!dev-dotnet/glade-sharp
	!dev-dotnet/pango-sharp
	!dev-dotnet/atk-sharp"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	sys-devel/automake:1.16"

PATCHES=( "${FILESDIR}/mono-ambiguous-range.patch" )

src_configure() {
	econf	--disable-static \
		--disable-dependency-tracking \
		--disable-maintainer-mode
}

src_install() {
	default
	dotnet_multilib_comply
	sed -i "s/\\r//g" "${D}"/usr/bin/* || die "sed failed"
}
