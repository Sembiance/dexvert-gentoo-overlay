EAPI=8

inherit perl-module

DESCRIPTION="Create, manipulate and save text mode images with perl"
HOMEPAGE="https://metacpan.org/dist/Image-TextMode"
LICENSE="PerlDL"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

BDEPEND="dev-perl/Module-Build"
RDEPEND=">=dev-lang/perl-5.10
	dev-perl/File-ShareDir
	dev-perl/GD
	dev-ruby/getoptlong
	dev-perl/Module-Install
	dev-perl/Module-Pluggable
	dev-perl/Module-Runtime
	dev-perl/Moo
	dev-perl/Type-Tiny"
DEPEND="${RDEPEND}"
