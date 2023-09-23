EAPI=8

DESCRIPTION="Tools to manipulate Atari ATR disk images"
HOMEPAGE="https://github.com/jhallen/atari-tools"
LICENSE="GPL-2"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_install() {
	into /opt/${PN}
    insinto /opt/${PN}

    doins atr

    fperms 0755 /opt/${PN}/atr
    
    dosym /opt/${PN}/atr /opt/bin/atr
}
