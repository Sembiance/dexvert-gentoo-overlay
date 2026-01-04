EAPI=8

inherit go-module

DESCRIPTION="SMAF dumper"
HOMEPAGE="https://github.com/but80/smaf825"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

BDEPEND=">=dev-lang/go-1.16"

src_compile() {
	go build -mod=vendor -o ${PN} .
}

src_install() {
	dobin ${PN}
}
