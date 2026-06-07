# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="Enables ANSI colors for printing"
HOMEPAGE="https://github.com/pnathan/cl-ansi-text"
SRC_URI="https://github.com/pnathan/cl-ansi-text/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT="0"

RDEPEND="dev-lisp/alexandria"
DEPEND="${RDEPEND}"
