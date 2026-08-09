EAPI=8

DESCRIPTION="3D Creation/Animation/Publishing System"
HOMEPAGE="https://www.blender.org"
LICENSE="GPL-3+ Apache-2.0"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/blender-${PV}-linux-x64.tar.xz"
S="${WORKDIR}/blender-${PV}-linux-x64"

SLOT="$(ver_cut 1-2)"
KEYWORDS="~amd64"
RESTRICT="mirror strip test"

QA_PREBUILT="opt/${P}/*"

RDEPEND="
	app-arch/zstd
	media-libs/libglvnd[X]
	sys-apps/util-linux
	sys-libs/glibc
	sys-libs/ncurses
	virtual/libcrypt
	virtual/zlib:0/1
	x11-base/xorg-server
	x11-libs/libICE
	x11-libs/libSM
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXfixes
	x11-libs/libXi
	x11-libs/libXrender
	x11-libs/libXt
	x11-libs/libXxf86vm
	x11-libs/libdrm
	x11-libs/libxcb
	x11-libs/libxkbcommon"

src_prepare() {
	default

	# Remove unused gpu libraries so we don't get missing libraries from QA
	rm lib/libOpenImageDenoise_device_cuda*
	rm lib/libOpenImageDenoise_device_hip*
	rm lib/libOpenImageDenoise_device_sycl* lib/libpi_level_zero*
}

src_install() {
	dodir /opt
	mv "${S}" "${ED}/opt/${P}" || die
	dosym -r "/opt/${P}/blender" "/usr/bin/${P}"
}
