# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 git-r3

DESCRIPTION="A very simple library to allow indentation hints for SWANK"
HOMEPAGE="https://shinmera.com/docs/trivial-indent"
EGIT_REPO_URI="https://codeberg.org/shinmera/trivial-indent.git"
EGIT_COMMIT="df07d50bbc71c32a6ca62ce062f66e11011945e9"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
