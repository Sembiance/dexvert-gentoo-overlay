EAPI=8

DESCRIPTION="Fuzzy pixmap manipulation"
HOMEPAGE="http://fileformats.archiveteam.org/wiki/FBM_image"
LICENSE="GPL-2"

SRC_URI="https://sembiance.com/distfiles/dexvert/${CATEGORY}/${PN}/${P}.tar.gz"
S="${WORKDIR}"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

PATCHES=( "${FILESDIR}/fix_compile.patch" )

src_install() {
	dobin clr2gray
	doman clr2gray.1

	dobin fbcat
	doman fbcat.1

	dobin fbclean
	doman fbclean.1

	dobin fbconv
	doman fbconv.1

	dobin fbedge
	doman fbedge.1

	dobin fbext
	doman fbext.1

	dobin fbgamma

	dobin fbhalf
	doman fbhalf.1

	dobin fbham
	doman fbham.1

	dobin fbhist
	doman fbhist.1

	dobin fbinfo
	doman fbinfo.1

	dobin fbm2pod
	doman fbm2pod.1

	dobin fbm2tga

	dobin fbmask
	doman fbmask.1

	dobin fbmedian
	doman fbmedian.1

	dobin fbnorm
	doman fbnorm.1

	dobin fbpalet

	dobin fbps
	doman fbps.1

	dobin fbquant
	doman fbquant.1

	dobin fbrev

	dobin fbrot
	doman fbrot.1

	dobin fbsample
	doman fbsample.1

	dobin fbsharp
	doman fbsharp.1

	dobin fbthin
	doman fbthin.1

	dobin gray2clr
	doman gray2clr.1

	#dobin idiff
	#doman idiff.1

	dobin mps2fbm

	dobin pbm2ps
	doman pbm2ps.1

	dobin pbmtitle
	doman pbmtitle.1

	dobin pic2fbm

	dobin qrt2fbm
	doman qrt2fbm.1

	dobin raw2fbm
	doman raw2fbm.1

	dobin tga2fbm

	dobin udiff

	dobin unmap

	dobin uunet2fbm
	doman uunet2fbm.1
}

