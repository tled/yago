# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit eutils java-pkg-2

DESCRIPTION="yEd is a powerful diagram editor that can be used to quickly and effectively generate high-quality drawings of diagrams."
HOMEPAGE="http://www.yworks.com/en/products_yed_about.html"
SRC_URI="yEd-${PV}.zip"
MY_JAR="${P}.jar"
DOWNLOAD_URL="http://www.yworks.com/en/products_download.php?file=${SRC_URI}"
LICENSE="yEd"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="fetch"

RDEPEND=">=virtual/jre-1.4"
DEPEND="
	app-arch/unzip
	${RDEPEND}"


pkg_nofetch() {
	einfo "Please download the ${SRC_URI} from"
	einfo "${DOWNLOAD_URL}"
	einfo "and place it in ${DISTDIR}"
}


src_unpack() {
	unzip "${DISTDIR}/"${A} -d ${S}
}

src_install() {
	cd "${S}/${P}"
	java-pkg_dojar ${PN}.jar vectorgraphics.jar
	java-pkg_dolauncher ${PN} --main B.A.A.B -into "/usr"
    doicon "${S}"/${P}/icons/yicon32.png
	make_desktop_entry yed yEd yicon32 "Graphics;2DGraphics"

#	java-pkg_newjar "${S}/${P}"/${PN}.jar
#	java-pgk_newjar "${S}/${P}/vectorgraphics.jar"
#	java-pkg_dolauncher ${PN}
#	make_desktop_entry ${PN} yEd
#	dodoc "${S}/${P}"/license.html
}

