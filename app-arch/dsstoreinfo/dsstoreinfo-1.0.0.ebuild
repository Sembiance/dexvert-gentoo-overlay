EAPI=7

DESCRIPTION="A tool to list filenames within a .DS_Store file"
HOMEPAGE="https://github.com/gehaxelt/Python-dsstore"
LICENSE="MIT"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-lang/python"
RDEPEND=${DEPEND}

src_install() {
	dobin dsstoreinfo

	into /opt/${PN}
	insinto /opt/${PN}

	doins dsstore.py main.py
}
