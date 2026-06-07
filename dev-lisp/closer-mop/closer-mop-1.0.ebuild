# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="Rectifies many of the absent or incorrect CLOS MOP
features"
HOMEPAGE="https://codeberg.org/pcostanza/closer-mop"
SRC_URI="https://codeberg.org/pcostanza/closer-mop/archive/v1.0.0.tar.gz"
S="${WORKDIR}/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=""
