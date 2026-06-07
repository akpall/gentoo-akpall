# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="Portable shared-state concurrency for Common Lisp"
HOMEPAGE="https://github.com/sionescu/bordeaux-threads"
SRC_URI="https://github.com/sionescu/bordeaux-threads/archive/refs/tags/v0.9.4.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
