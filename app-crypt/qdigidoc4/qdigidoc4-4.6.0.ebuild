# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Application for digitally signing and encrypting documents"
HOMEPAGE="https://github.com/open-eid/DigiDoc4-Client"
SRC_URI="https://github.com/open-eid/DigiDoc4-Client/releases/download/v${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-libs/flatbuffers
	dev-libs/libdigidocpp
	dev-libs/xmlsec
	dev-qt/qtbase
	dev-qt/qtsvg
	net-nds/openldap
	sys-apps/pcsc-lite
"

src_prepare() {
	cmake_src_prepare

	# TSL.qrc: https://github.com/open-eid/qdigidoc/wiki/DeveloperTips#building-in-sandboxed-environment
	# EE.xml: https://sr.riik.ee/tsl/estonian-tsl.xml
	# eu-lotl.xml: https://ec.europa.eu/tools/lotl/eu-lotl.xml
	cp "${FILESDIR}"/{TSL.qrc,EE.xml,eu-lotl.xml} "${S}"/client/
	# https://id.eesti.ee/config.{json,rsa,pub}
	cp "${FILESDIR}"/config.{json,rsa,pub} "${S}"/common/
}
