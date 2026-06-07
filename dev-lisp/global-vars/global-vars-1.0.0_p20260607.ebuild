# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 git-r3

DESCRIPTION="Define efficient global variables in Common Lisp"
HOMEPAGE="https://github.com/lmj/global-vars/"
EGIT_REPO_URI="https://github.com/lmj/global-vars.git"
EGIT_COMMIT="c749f32c9b606a1457daa47d59630708ac0c266e"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=""
