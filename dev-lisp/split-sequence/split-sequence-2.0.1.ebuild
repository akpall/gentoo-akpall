# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="Splits sequence into a list of subsequences delimited by
objects"
HOMEPAGE="https://github.com/sharplispers/split-sequence"
SRC_URI="https://github.com/sharplispers/split-sequence/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="virtual/commonlisp"
DEPEND="${RDEPEND}"

src_install() {
	common-lisp-3_src_install
	insinto /usr/share/common-lisp/source/parse-number
	doins version.sexp
}
