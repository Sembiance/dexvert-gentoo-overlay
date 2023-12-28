# Auto-Generated by cargo-ebuild 0.4.0 - Then modified by me
EAPI=8

CRATES="
	adler-1.0.2
	adler32-1.2.0
	arrayref-0.3.6
	arrayvec-0.5.2
	arrayvec-0.7.2
	base64-0.13.0
	bitflags-1.3.2
	bytemuck-1.9.1
	cfg-if-1.0.0
	color_quant-1.1.0
	crc32fast-1.3.2
	data-url-0.1.1
	deflate-1.0.0
	flate2-1.0.24
	float-cmp-0.9.0
	fontconfig-parser-0.5.0
	fontdb-0.9.1
	gif-0.11.3
	jpeg-decoder-0.2.6
	kurbo-0.8.3
	libc-0.2.126
	log-0.4.17
	matches-0.1.9
	memmap2-0.5.4
	miniz_oxide-0.5.3
	once_cell-1.12.0
	pico-args-0.5.0
	png-0.17.5
	rctree-0.4.0
	rgb-0.8.32
	roxmltree-0.14.1
	rustybuzz-0.5.1
	safe_arch-0.5.2
	simplecss-0.2.1
	siphasher-0.3.10
	smallvec-1.8.0
	svgtypes-0.8.1
	tiny-skia-0.6.5
	ttf-parser-0.15.1
	unicode-bidi-0.3.8
	unicode-bidi-mirroring-0.1.0
	unicode-ccc-0.1.2
	unicode-general-category-0.4.0
	unicode-script-0.5.4
	unicode-vo-0.1.0
	weezl-0.1.6
	xmlparser-0.13.3
	xmlwriter-0.1.0"

inherit cargo

DESCRIPTION="An SVG rendering library."
HOMEPAGE="https://github.com/RazrFalcon/resvg/releases"
LICENSE="0BSD Apache-2.0 BSD BSD-2 MIT MPL-2.0 ZLIB"
SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz
	$(cargo_crate_uris)"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"
