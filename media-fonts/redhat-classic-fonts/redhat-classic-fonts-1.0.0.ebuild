EAPI=8

inherit font

DESCRIPTION="Classic Redhat 7.x fonts for Courier, Times, etc"
HOMEPAGE="https://ia800706.us.archive.org/view_archive.php?archive=/24/items/redhat-7.3_release/valhalla-i386-disc1.iso"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"

FONT_PN="redhat-classic-fonts"
#FONT_S=( ${PN} )
FONTDIR="/usr/share/fonts/redhat-classic-fonts"
FONT_SUFFIX="pcf.gz"
