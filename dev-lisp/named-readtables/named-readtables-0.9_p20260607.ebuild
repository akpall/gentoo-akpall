# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 git-r3

DESCRIPTION="Named readtables for Common Lisp "
HOMEPAGE="https://github.com/melisgl/named-readtables"
SRC_URI="https://github.com/melisgl/named-readtables/archive/refs/tags/0.9.tar.gz"
EGIT_REPO_URI="https://github.com/melisgl/named-readtables.git"
EGIT_COMMIT="609a591989927f30b9be76ed510bf1fbcdb53682"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
