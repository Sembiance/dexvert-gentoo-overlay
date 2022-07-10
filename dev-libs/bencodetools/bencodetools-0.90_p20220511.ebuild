EAPI=7

DESCRIPTION="A collection of tools for manipulating bencoded data."
HOMEPAGE="https://gitlab.com/heikkiorsila/bencodetools"
LICENSE="${PN}-LICENSE"
SRC_URI="https://telparia.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.zip"
S="${WORKDIR}/${PN}-master"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-lang/python"
RDEPEND="${DEPEND}"

src_configure() {
	# not autotools generated
	local configure=(
		./configure
		--prefix="${D}"/usr
		--without-python
		${EXTRA_ECONF}
	)
	echo ${configure[*]}
	"${configure[@]}" || die
}

src_compile() {
	default
}

src_install() {
	default

	mv "${D}"/usr/lib "${D}"/usr/lib64
	
	python3.9 setup.py install --root="${D}"	
}
