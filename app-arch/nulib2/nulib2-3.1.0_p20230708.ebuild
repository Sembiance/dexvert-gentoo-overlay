EAPI=8

DESCRIPTION="NufxLib and NuLib2, Apple II file archive utilities"
HOMEPAGE="https://github.com/fadden/nulib2"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

src_configure() {
	cd nufxlib
	econf
	
	cd ../nulib2
	econf
}

src_compile() {
	cd nufxlib
	emake

	cd ../nulib2
	emake
}

src_install() {
	cd nulib2
	dobin nulib2
	doman nulib2.1
}
