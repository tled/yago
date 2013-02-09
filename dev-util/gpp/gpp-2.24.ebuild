# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

SRC_URI="http://files.nothingisreal.com/software/gpp/${P}.tar.bz2"
DESCRIPTION="The Generic PreProcessor"
HOMEPAGE="http://en.nothingisreal.com/wiki/GPP"
LICENSE="LGPL-2.1"
SLOT="1"
KEYWORDS="~x86 ~amd64"

src_configure() {
	econf || die "configure failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc AUTHORS BUGS ChangeLog INSTALL NEWS README THANKS TODO
}
