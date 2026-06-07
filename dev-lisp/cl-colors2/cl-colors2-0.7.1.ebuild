# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="Simple color library for Common Lisp"
HOMEPAGE="https://codeberg.org/cage/cl-colors2"
SRC_URI="https://codeberg.org/cage/cl-colors2/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-lisp/alexandria
	dev-lisp/parse-number
"
DEPEND="${RDEPEND}"
