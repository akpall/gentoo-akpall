# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 git-r3

DESCRIPTION="A few simple tools to help you with documenting your library"
HOMEPAGE="https://shinmera.com/docs/documentation-utils"
EGIT_REPO_URI="https://shinmera.com/project/documentation-utils.git"
EGIT_COMMIT="cd5b506c7aa555dea0cc0785f36256348c9e839d"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-lisp/trivial-indent"
DEPEND="${RDEPEND}"
