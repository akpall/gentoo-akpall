# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 git-r3

DESCRIPTION="A Damn OPTion parsing library"
HOMEPAGE="https://github.com/sjl/adopt/"
EGIT_REPO_URI="https://github.com/sjl/adopt.git"
EGIT_COMMIT="8a2890abc804f5901ce510004f47fcbee8962fb0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="virtual/commonlisp"
DEPEND="${RDEPEND}"
