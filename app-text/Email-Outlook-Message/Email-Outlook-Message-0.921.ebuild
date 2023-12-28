EAPI=8

inherit perl-module

DESCRIPTION="Parses .msg message files as produced by Microsoft Outlook."
HOMEPAGE="https://metacpan.org/pod/Email::Outlook::Message"
LICENSE="PerlDL"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

BDEPEND="dev-perl/Module-Build"
RDEPEND=">=dev-lang/perl-5.10
	dev-perl/Email-Address
	dev-perl/Email-MIME
	dev-perl/Email-MIME-ContentType
	dev-perl/Email-Sender
	dev-perl/Email-Simple
	dev-perl/IO-All
	dev-perl/IO-String
	dev-perl/OLE-StorageLite"
DEPEND="${RDEPEND}"
