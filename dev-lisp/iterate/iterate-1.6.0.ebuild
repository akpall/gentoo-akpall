# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="Jonathan Amsterdam's iterator/gatherer/accumulator facility"
HOMEPAGE="https://gitlab.common-lisp.net/iterate/iterate"
SRC_URI="https://gitlab.common-lisp.net/iterate/iterate/-/archive/1.6.0/iterate-1.6.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="virtual/commonlisp"
DEPEND="${RDEPEND}"
