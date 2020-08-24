# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{6,7,8} )
DISTUTILS_SINGLE_IMPL=1
inherit git-r3
EGIT_REPO_URI="https://github.com/eosrei/${PN}.git"
inherit distutils-r1

DESCRIPTION="Create SVG in OpenType color fonts from a set of SVG source files"
HOMEPAGE="https://github.com/eosrei/scfbuild"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="
	$(python_gen_cond_dep '
		>=dev-python/fonttools-2.5[${PYTHON_MULTI_USEDEP}]
		media-gfx/fontforge[python,${PYTHON_SINGLE_USEDEP}]
		dev-python/pyyaml[${PYTHON_MULTI_USEDEP}]
	')
"
RDEPEND="${DEPEND}"
PATCHES=( "${FILESDIR}/python3.patch" )

pkg_setup() {
	python_setup
}

python_prepare_all() {
	distutils-r1_python_prepare_all
	[[ -e "${S}"/setup.py ]] && return
	printf '#!%s\nfrom distutils.core import setup\nsetup(
	name="%s",version=%s,description="%s",url="%s",license="%s",
	packages=["%s", "%s"],scripts=["%s"])\n' \
	"${PYTHON}" \
	"${PN}" \
	$(awk '/__version__/ {print $3}' scfbuild/__init__.py) \
	"${DESCRIPTION}" \
	"${HOMEPAGE}" \
	"${LICENSE}" \
	"${PN}" "${PN}.constants"\
	"bin/${PN}" \
	> "${S}"/setup.py
}
