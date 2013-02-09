# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/games-strategy/xscorch/xscorch-0.2.0-r1.ebuild,v 1.5 2009/02/12 14:57:18 tupone Exp $

EAPI=2
inherit eutils games

DESCRIPTION="clone of the classic DOS game, 'Scorched Earth'"
HOMEPAGE="http://xscorch.org"
SRC_URI="http://xscorch.org./releases/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ppc x86"
IUSE="gtk mikmod"

DEPEND="gtk? ( =x11-libs/gtk+-2* )
	mikmod? ( media-libs/libmikmod )"

src_configure() {
	egamesconf \
		--enable-network \
		--without-readline \
		$(use_enable mikmod sound) \
		$(use_with gtk) \
		|| die
}

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc AUTHORS ChangeLog NEWS README TODO
	# remove unneeded, empty directory
	rmdir "${D}"/usr/games/include
	prepgamesdirs
}
