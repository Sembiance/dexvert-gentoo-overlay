EAPI=8

DESCRIPTION="NVIDIA container runtime library"
HOMEPAGE="https://github.com/NVIDIA/libnvidia-container"
LICENSE="Apache-2.0"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="
	net-libs/libtirpc
	sys-libs/libcap
	sys-libs/libseccomp
	x11-drivers/nvidia-drivers"
DEPEND="${RDEPEND}"
BDEPEND="
	net-libs/rpcsvc-proto
	sys-apps/lsb-release
	sys-devel/bmake
	virtual/pkgconfig"

PATCHES=(
	"${FILESDIR}"/${PN}-1.1.1-add-enum-h.patch
	"${FILESDIR}"/${PN}-1.1.1-add-sysfs-c.patch
	"${FILESDIR}"/${PN}-1.1.1-add-sysfs-h.patch
	"${FILESDIR}"/${PN}-1.1.1-add-utils-c.patch
	"${FILESDIR}"/${PN}-1.1.1-add-utils-h.patch
	"${FILESDIR}"/${PN}-1.1.1-fix-git.patch
	"${FILESDIR}"/${PN}-1.1.1-fix-makefile.patch
	"${FILESDIR}"/${PN}-1.1.1-fix-nvc.patch
	"${FILESDIR}"/${PN}-1.3.0-fix-nvc-info.patch
	"${FILESDIR}"/${PN}-1.3.0-fix-nvc-mount.patch
	"${FILESDIR}"/${PN}-1.3.0-fix-modprobe-utils-c.patch
	"${FILESDIR}"/${PN}-1.3.0-fix-modprobe-utils-h.patch
)
