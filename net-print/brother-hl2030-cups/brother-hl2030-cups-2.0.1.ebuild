# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit rpm multilib eutils

DESCRIPTION="Brother HL-2030 LPR print drivers with CUPS wrapper."
HOMEPAGE="http://solutions.brother.com/linux/en_us/index.html"
SRC_URI="http://www.brother.com/pub/bsc/linux/dlf/cupswrapperHL2030-2.0.1-1.i386.rpm"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="strip"

DEPEND="net-print/cups
        app-arch/rpm
		>=net-print/brother-hl2030-lpr-2.0.1"
RDEPEND="${DEPEND}"

src_unpack() {
	CUPSD="cupswrapperHL2030-2.0.1-1.i386.rpm"

	rpm_unpack "${DISTDIR}/${A}" || die "Error unpacking ${CUPSD}."
}

src_install() {
	has_multilib_profile && ABI=x86
	INSTDIR="/opt/Brother"

	dodir "${INSTDIR}/cupswrapper"
	mv usr/local/Brother/cupswrapper/{brcupsconfig3,cupswrapperHL2030-2.0.1} "${D}${INSTDIR}/cupswrapper"
}
