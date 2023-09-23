EAPI=8

DESCRIPTION="CLI tool from wine that can dump info about an exe or dll"
HOMEPAGE="https://www.winehq.org/"
LICENSE="LGPL-2.1"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/wine-${PV}.tar.xz"
S="${WORKDIR}/wine-${PV}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_prepare() {
	default
	touch tools/winedump/config.h
}

src_configure() {
	pwd
}

src_compile() {
	cd tools/winedump
	gcc -I../../include -D _GNU_SOURCE -D __WINESRC__ -o winedump debug.c dos.c dump.c emf.c font.c le.c lib.c lnk.c main.c mf.c minidump.c misc.c msc.c msmangle.c ne.c nls.c output.c pdb.c pe.c search.c symbol.c tlb.c
}

src_install() {
	dobin tools/winedump/winedump
}

