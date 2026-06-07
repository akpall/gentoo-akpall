# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 git-r3

DESCRIPTION="Portability layer for atomic operations like compare-and-swap (CAS)"
HOMEPAGE="https://codeberg.org/shinmera/atomics"
EGIT_REPO_URI="https://codeberg.org/shinmera/atomics.git"
EGIT_COMMIT="ce398c4ffc6fb3b8cd0fec65ff31bc4c771b8216"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-lisp/documentation-utils"
DEPEND="${RDEPEND}"
