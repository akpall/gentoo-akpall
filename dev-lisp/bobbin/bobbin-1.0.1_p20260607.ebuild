# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 git-r3

DESCRIPTION="Bobbin wraps strings. "
HOMEPAGE="https://github.com/sjl/bobbin"
EGIT_REPO_URI="https://github.com/sjl/bobbin.git"
EGIT_COMMIT="b454e8241b24ceab674eeeae464c8082b1b6d8ce"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-lisp/split-sequence
	virtual/commonlisp
"
DEPEND="${RDEPEND}"
