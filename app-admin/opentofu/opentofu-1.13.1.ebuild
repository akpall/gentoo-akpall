# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-env

DESCRIPTION="The open source infrastructure as code tool"
HOMEPAGE="https://www.opentofu.org/"
SRC_URI="
	https://github.com/opentofu/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/akpall/gentoo-akpall/raw/refs/heads/dev/app-admin/opentofu/files/${P}-deps.tar.xz
"

LICENSE="Apache-2.0 BSD BSD-2 MPL-2.0 MIT ISC"
SLOT="0"
KEYWORDS="amd64"

BDEPEND="dev-lang/go"

RESTRICT="test"

DOCS=( {README,CHANGELOG}.md )

PATCHES=(
	"${FILESDIR}/opentofu-1.12.5-lower-go-dependency-1.26.5-1.26.0.patch"
)

src_configure() {
	go-env_set_compile_environment
}

src_unpack() {
	default
	mv vendor ${P}
}

src_compile() {
	go build \
	   -mod=vendor \
	   -o bin/tofu \
	   ./cmd/tofu || die
}

src_install() {
	dobin bin/*
	einstalldocs
}

pkg_postinst() {
	elog "If you would like to install shell completions please run:"
	elog "    tofu -install-autocomplete"
}
