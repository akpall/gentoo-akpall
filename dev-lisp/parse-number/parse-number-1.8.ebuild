# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="Functions for parsing strings the standard number types
without using the reader"

HOMEPAGE="https://github.com/sharplispers/parse-number"
SRC_URI="https://github.com/sharplispers/parse-number/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="virtual/commonlisp"
DEPEND="${RDEPEND}"

src_install() {
	common-lisp-3_src_install
	insinto /usr/share/common-lisp/source/parse-number
	doins version.sexp
}
