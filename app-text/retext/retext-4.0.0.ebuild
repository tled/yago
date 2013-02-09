# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit distutils eutils python

DESCRIPTION="ReText is a simple editor that reads your text with MarkDown or \
HTML markup and saves it as plain text, HTML or PDF."
HOMEPAGE="http://sourceforge.net/projects/retext"
SRC_URI="mirror://sourceforge/retext/ReText-${PV}.tar.gz"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gdocs spell"

DEPEND="dev-python/PyQt4
	dev-python/markdown
	dev-python/docutils
	dev-python/markups
	spell? ( dev-python/pyenchant )
	gdocs? ( dev-python/gdata )
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/ReText-${PV}"

