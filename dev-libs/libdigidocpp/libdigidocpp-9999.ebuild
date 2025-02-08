# Copyright 2024-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Library for creating, signing and verification of digitally signed documents"
HOMEPAGE="https://github.com/open-eid/libdigidocpp"

if [[ ${PV} == "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/open-eid/libdigidocpp.git"
else
	# in version 4.1.0 .tar.gz is by mistake just .tar
	SRC_URI="https://github.com/open-eid/libdigidocpp/releases/download/v${PV}/${P}.tar.gz -> ${P}.tar"
	KEYWORDS="~amd64"
fi

LICENSE="LGPL-2.1"
SLOT="0"

RDEPEND="dev-libs/xmlsec:="
DEPEND="${RDEPEND}"
#BDEPEND=""
