EAPI=7

inherit git-r3

DESCRIPTION="Tools to manipulate Atari ATR disk images"
HOMEPAGE="https://github.com/jhallen/atari-tools"
EGIT_REPO_URI="https://github.com/jhallen/atari-tools.git"

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

    doins atr

    fperms 0755 /opt/${PN}/atr
    
    dosym /opt/${PN}/atr /opt/bin/atr
}
