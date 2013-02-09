# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit distutils eutils git-2

DESCRIPTION="A markdown viewer, based on wxwidgets and webkit"
HOMEPAGE="https://github.com/tled/wxMarkdown"
SRC_URI=""
EGIT_REPO_URI="git://github.com/tled/wxMarkdown.git"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/python:2.7
		dev-python/wxpython:2.8
		dev-python/pywebkitgtk
		dev-python/chardet
		dev-python/markdown2"
RDEPEND="${DEPEND}"



