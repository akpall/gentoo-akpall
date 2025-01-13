# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Library for creating, signing and verification of digitally signed documents"
HOMEPAGE="https://github.com/open-eid/libdigidocpp"
SRC_URI="https://github.com/open-eid/libdigidocpp/releases/download/v${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-libs/xmlsec:="
DEPEND="${RDEPEND}"
#BDEPEND=""
