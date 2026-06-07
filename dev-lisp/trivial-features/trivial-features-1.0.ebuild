# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="Portable CL:*FEATURES* "
HOMEPAGE="https://github.com/trivial-features/trivial-features"
SRC_URI="https://github.com/trivial-features/trivial-features/archive/refs/tags/v1.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="virtual/commonlisp"
DEPEND="${RDEPEND}"
