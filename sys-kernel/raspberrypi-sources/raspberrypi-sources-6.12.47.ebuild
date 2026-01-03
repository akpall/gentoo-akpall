# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

ETYPE="sources"
EXTRAVERSION="raspberrypi"
K_GENPATCHES_VER="0"
K_SECURITY_UNSUPPORTED="1"

inherit kernel-2

RASPBERRYPI_KERNEL_TAG="stable_20250916"

DESCRIPTION="Raspberry Pi kernel sources"
HOMEPAGE="https://github.com/raspberrypi/linux"
SRC_URI="https://github.com/raspberrypi/linux/archive/refs/tags/${RASPBERRYPI_KERNEL_TAG}.tar.gz"
S="${WORKDIR}/linux-${PVR}-raspberrypi"
KEYWORDS="arm arm64"

pkg_setup() {
	ewarn ""
	ewarn "${PN} is *not* supported by the Gentoo Kernel Project in any way."
	ewarn "If you need support, please contact the raspberrypi developers directly."
	ewarn "Do *not* open bugs in Gentoo's bugzilla unless you have issues with"
	ewarn "the ebuilds. Thank you."
	ewarn ""

	kernel-2_pkg_setup
}

universal_unpack() {
	unpack ${RASPBERRYPI_KERNEL_TAG}.tar.gz

	# We want to rename the unpacked directory to a nice normalised string
	# bug #762766
	mv "${WORKDIR}/linux-${RASPBERRYPI_KERNEL_TAG}" "${WORKDIR}/linux-${PVR}-raspberrypi" || die

	# remove all backup files
	find . -iname "*~" -exec rm {} \; 2>/dev/null
}
