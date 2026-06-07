# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 git-r3

DESCRIPTION="A terminfo database front end in Common Lisp. Based on
terminfo by Paul Foley"

HOMEPAGE="https://github.com/npatrick04/terminfo"
EGIT_REPO_URI="https://github.com/npatrick04/terminfo.git"
EGIT_COMMIT="b8b2e3ed786bfcf9f1aa4a264cee2e93135080f5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="virtual/commonlisp"
DEPEND="${RDEPEND}"
