EAPI=8

inherit perl-module

DESCRIPTION="tools for Akai S-series samplers"
HOMEPAGE="https://www.lsnl.jp/~ohsaki/software/akaitools/"
LICENSE="GPL-2"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

BDEPEND="dev-perl/Module-Build"
RDEPEND=">=dev-lang/perl-5.10"
DEPEND="${RDEPEND}"

src_install() {
	default
	perl_domodule -r Synth
}
