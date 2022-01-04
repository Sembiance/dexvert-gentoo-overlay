EAPI=7

DESCRIPTION="2D CAD program"
HOMEPAGE="https://qcad.org/en/download"
LICENSE="${PN}-LICENSE"
SRC_URI="https://telparia.com/distfiles-restricted/dexvert/${CATEGORY}/${PN}/qcad-${PV}-pro-linux-qt5.14-x86_64.tar.gz"
S="${WORKDIR}/qcad-${PV}-pro-linux-qt5.14-x86_64"

SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

DEPEND="dev-db/unixODBC"
RDEPEND="${DEPEND}"

src_install() {
	into /opt/${PN}
	insinto /opt/${PN}

	doins -r .

	fperms 0755 /opt/${PN}/qcad
	fperms 0755 /opt/${PN}/qcad-bin

	fperms 0755 /opt/${PN}/dwginfo
	dosym /opt/${PN}/bin/dwginfo /opt/bin/dwginfo
	newbin "${FILESDIR}"/dwginfo-bin dwginfo

	fperms 0755 /opt/${PN}/dwg2bmp
	dosym /opt/${PN}/bin/dwg2bmp /opt/bin/dwg2bmp
	newbin "${FILESDIR}"/dwg2bmp-bin dwg2bmp

	fperms 0755 /opt/${PN}/dwg2csv
	dosym /opt/${PN}/bin/dwg2csv /opt/bin/dwg2csv
	newbin "${FILESDIR}"/dwg2csv-bin dwg2csv

	fperms 0755 /opt/${PN}/dwg2svg
	dosym /opt/${PN}/bin/dwg2svg /opt/bin/dwg2svg
	newbin "${FILESDIR}"/dwg2svg-bin dwg2svg

	fperms 0755 /opt/${PN}/dwg2pdf
	dosym /opt/${PN}/bin/dwg2pdf /opt/bin/dwg2pdf
	newbin "${FILESDIR}"/dwg2pdf-bin dwg2pdf

	fperms 0755 /opt/${PN}/dwgmapconvert
	dosym /opt/${PN}/bin/dwgmapconvert /opt/bin/dwgmapconvert
	newbin "${FILESDIR}"/dwgmapconvert-bin dwgmapconvert

	fperms 0755 /opt/${PN}/dwg2maptiles
	dosym /opt/${PN}/bin/dwg2maptiles /opt/bin/dwg2maptiles
	newbin "${FILESDIR}"/dwg2maptiles-bin dwg2maptiles

	fperms 0755 /opt/${PN}/dwg2dwg
	dosym /opt/${PN}/bin/dwg2dwg /opt/bin/dwg2dwg
	newbin "${FILESDIR}"/dwg2dwg-bin dwg2dwg

	fperms 0755 /opt/${PN}/dwghatch
	dosym /opt/${PN}/bin/dwghatch /opt/bin/dwghatch
	newbin "${FILESDIR}"/dwghatch-bin dwghatch

	fperms 0755 /opt/${PN}/dwghatcharea
	dosym /opt/${PN}/bin/dwghatcharea /opt/bin/dwghatcharea
	newbin "${FILESDIR}"/dwghatcharea-bin dwghatcharea

	fperms 0755 /opt/${PN}/dwgexplode
	dosym /opt/${PN}/bin/dwgexplode /opt/bin/dwgexplode
	newbin "${FILESDIR}"/dwgexplode-bin dwgexplode

	fperms 0755 /opt/${PN}/merge
	dosym /opt/${PN}/bin/dwgmerge /opt/bin/dwgmerge
	newbin "${FILESDIR}"/dwgmerge-bin dwgmerge

	fperms 0755 /opt/${PN}/bbox
	dosym /opt/${PN}/bin/dwgbbox /opt/bin/dwgbbox
	newbin "${FILESDIR}"/dwgbbox-bin dwgbbox
}
