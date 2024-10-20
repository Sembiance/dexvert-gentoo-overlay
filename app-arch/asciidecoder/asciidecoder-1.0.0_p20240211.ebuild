EAPI=8

inherit go-module

DESCRIPTION="Command asciidecoder extracts the files from an Oberon AsciiCoder archive"
HOMEPAGE="https://github.com/fzipp/oberon/blob/main/cmd/asciidecoder/main.go"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

BDEPEND=">=dev-lang/go-1.16"

src_unpack() {
	default
}

src_compile() {
	pwd
	ego build ${PN}.go
}

src_install() {
	dobin ${PN}
}
