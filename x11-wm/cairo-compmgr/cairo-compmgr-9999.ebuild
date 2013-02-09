# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils autotools gnome2 git-2

DESCRIPTION="A versatile and extensible compositing manager which uses cairo for rendering"
HOMEPAGE="http://cairo-compmgr.tuxfamily.org/"
SRC_URI=""
EGIT_REPO_URI="git://git.tuxfamily.org/gitroot/ccm/cairocompmgr.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="x11-libs/gtk+:2
	x11-libs/cairo
	dev-lang/vala
	x11-libs/pixman"
DEPEND="${RDEPEND}
	>=x11-proto/glproto-1.4.9"


#src_prepare() {
#	epatch "${FILESDIR}"/vala.patch || die "epatch failed!"
#}

src_configure() {
	./autogen.sh
	econf
}
