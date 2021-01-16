EAPI=7

inherit git-r3

DESCRIPTION="Various tools to extract data from Macromedia Director files"
HOMEPAGE="https://github.com/System25/drxtract"
EGIT_REPO_URI="https://github.com/System25/drxtract.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

RESTRICT="mirror test"

src_install() {
	into /opt/${PN}
    insinto /opt/${PN}

	doins -r .

	fperms 0755 /opt/${PN}/bitd2bmp
	fperms 0755 /opt/${PN}/casxtract
	fperms 0755 /opt/${PN}/clut2json
	fperms 0755 /opt/${PN}/drxtract
	fperms 0755 /opt/${PN}/fmapxtract
	fperms 0755 /opt/${PN}/lscr2lingo
	fperms 0755 /opt/${PN}/riffxtract
	fperms 0755 /opt/${PN}/rte22bmp
	fperms 0755 /opt/${PN}/snd2wav
	fperms 0755 /opt/${PN}/stxt2json
	fperms 0755 /opt/${PN}/vwlbxtract
	fperms 0755 /opt/${PN}/vwscxtract

	dosym /opt/${PN}/bitd2bmp /opt/bin/bitd2bmp
	dosym /opt/${PN}/casxtract /opt/bin/casxtract
	dosym /opt/${PN}/clut2json /opt/bin/clut2json
	dosym /opt/${PN}/drxtract /opt/bin/drxtract
	dosym /opt/${PN}/fmapxtract /opt/bin/fmapxtract
	dosym /opt/${PN}/lscr2lingo /opt/bin/lscr2lingo
	dosym /opt/${PN}/riffxtract /opt/bin/riffxtract
	dosym /opt/${PN}/rte22bmp /opt/bin/rte22bmp
	dosym /opt/${PN}/snd2wav /opt/bin/snd2wav
	dosym /opt/${PN}/stxt2json /opt/bin/stxt2json
	dosym /opt/${PN}/vwlbxtract /opt/bin/vwlbxtract
	dosym /opt/${PN}/vwscxtract /opt/bin/vwscxtract

	newbin "${FILESDIR}"/undirector undirector
	dosym /opt/${PN}/bin/undirector /opt/bin/undirector
}
