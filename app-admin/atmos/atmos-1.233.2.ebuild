# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

inherit go-module

DESCRIPTION="Terraform Orchestration Tool for DevOps"
HOMEPAGE="https://github.com/cloudposse/atmos"
SRC_URI="
	https://github.com/cloudposse/atmos/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/akpall/gentoo-akpall/raw/refs/heads/master/app-admin/atmos/files/${P}-deps.tar.xz
"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=">=dev-lang/go-1.26.10"

src_compile() {
	ego build \
		-o build/atmos-bin \
		-ldflags="-X github.com/cloudposse/atmos/pkg/version.Version=${PV}"
}

src_install() {
	dobin build/atmos-bin
	einstalldocs
}
