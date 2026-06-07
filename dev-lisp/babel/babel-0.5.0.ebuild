# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="Babel is a charset encoding/decoding library written in
pure Common Lisp"
HOMEPAGE="https://github.com/cl-babel/babel"
SRC_URI="https://github.com/cl-babel/babel/archive/refs/tags/v0.5.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="virtual/commonlisp"
DEPEND="${RDEPEND}"
