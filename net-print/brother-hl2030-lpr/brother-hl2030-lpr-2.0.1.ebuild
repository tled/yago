# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit rpm multilib

DESCRIPTION="Brother HL-2030 LPR print drivers with CUPS wrapper."
HOMEPAGE="http://solutions.brother.com/linux/en_us/index.html"
SRC_URI="http://www.brother.com/pub/bsc/linux/dlf/brhl2030lpr-2.0.1-1.i386.rpm"

LICENSE="Brother"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="fetch strip"


DEPEND="net-print/cups
        app-arch/rpm"
RDEPEND="${DEPEND}"

DOWNLOAD_URL="http://www.brother.com/pub/bsc/linux/dlf/brhl2030lpr-2.0.1-1.i386.rpm"

pkg_nofetch() {
	einfo "Please download ${A} from ${DOWNLOAD_URL}."
	einfo "Select 'I Accept' and move the file to ${DISTDIR}."
}

src_unpack() {
	LPRD="brhl2030lpr-2.0.1-1.i386.rpm"

	[ ! -r "${DISTDIR}/${A}" ] && die "Error reading ${A}."
	rpm_unpack "${DISTDIR}/${A}" || die "Error unpacking ${LPRD}."
}

src_install() {
	has_multilib_profile && ABI=x86
	INSTDIR="/opt/Brother"

	dosym ${INSTDIR} /usr/local/Brother
	dobin usr/bin/brprintconfiglpr2 usr/bin/brprintconflsr2
	dolib usr/lib/libbrcomplpr2.so
	dodir "${INSTDIR}/inf"
	dodir "${INSTDIR}/lpd"

	mv usr/local/Brother/inf/{brHL2030func,brHL2030rc,braddprinter,paperinf,setupPrintcap} "${D}${INSTDIR}/inf"
	mv usr/local/Brother/lpd/{filterHL2030,psconvert2,rawtobr2} "${D}${INSTDIR}/lpd"

	dodir /var/spool/lpd/HL2030
}

