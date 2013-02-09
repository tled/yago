# Copyright 2012 T.
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit python distutils multilib

DESCRIPTION="Select your windows and tiles them over the screen"
HOMEPAGE="http://www.giuspen.com/x-tile"
SRC_URI="http://www.giuspen.com/software/${P}.tar.xz"


LICENSE="GPL2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/pygtk:2
	dev-python/gconf-python
	dev-python/gnome-applets-python
	dev-python/pygobject"
RDEPEND="${DEPEND}"


