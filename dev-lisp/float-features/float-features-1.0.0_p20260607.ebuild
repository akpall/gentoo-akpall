# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 git-r3

DESCRIPTION="Portability library for IEEE float features that are not covered by the CL standard"
HOMEPAGE="https://codeberg.org/shinmera/float-features"
EGIT_REPO_URI="https://codeberg.org/shinmera/float-features.git"
EGIT_COMMIT="136a908ce060e04efb385473e884174217cf9baf"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=""
