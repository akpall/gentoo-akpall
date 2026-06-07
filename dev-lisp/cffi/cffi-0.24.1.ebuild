# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="The Common Foreign Function Interface"
HOMEPAGE="https://github.com/cffi/cffi"
SRC_URI="https://github.com/cffi/cffi/archive/refs/tags/v0.24.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-lisp/alexandria
	dev-lisp/babel
	dev-lisp/trivial-features
	virtual/commonlisp
"
DEPEND="${RDEPEND}"
BDEPEND=""
