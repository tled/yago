# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-mail/mboxgrep/mboxgrep-0.7.9-r1.ebuild,v 1.4 2012/02/05 18:10:26 armin76 Exp $

EAPI=4

inherit eutils

DESCRIPTION="Grep for mbox files"
SRC_URI="mirror://sourceforge/mboxgrep/${P}.tar.gz"
HOMEPAGE="http://mboxgrep.sf.net"

DEPEND=""
RDEPEND="${DEPEND}"

SLOT="0"
LICENSE="GPL"
KEYWORDS="ppc x86 ~amd64"
IUSE=""

src_prepare() {
	epatch "${FILESDIR}"/${P}-ldflags.patch
}

src_install () {
	emake \
		prefix=${D}/usr \
		mandir=${D}/usr/share/man \
		infodir=${D}/usr/share/info \
		install
	dodoc ChangeLog NEWS TODO README
}
