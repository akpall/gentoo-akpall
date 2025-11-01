# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

# | Architecture | Raspberry Pi Model | Command                |
# |--------------+--------------------+------------------------|
# | 64-bit       | 3                  | KERNEL=kernel8         |
# |              | Compute Module 3   | make bcm2711_defconfig |
# |              | 3+                 |                        |
# |              | Compute Module 3+  |                        |
# |              | Zero 2 W           |                        |
# |              | 4                  |                        |
# |              | 400                |                        |
# |              | Compute Module 4   |                        |
# |              | Compute Module 4S  |                        |
# |--------------+--------------------+------------------------|
# | 64-bit       | 5                  | KERNEL=kernel_2712     |
# |              | 500/500+           | make bcm2712_defconfig |
# |              | Compute Module 5   |                        |
# |--------------+--------------------+------------------------|
# | 32-bit       | 1                  | KERNEL=kernel          |
# |              | Compute Module 1   | make bcmrpi_defconfig  |
# |              | Zero               |                        |
# |              | Zero W             |                        |
# |--------------+--------------------+------------------------|
# | 32-bit       | 2                  | KERNEL=kernel7         |
# |              | 3                  | make bcm2709_defconfig |
# |              | Compute Module 3   |                        |
# |              | 3+                 |                        |
# |              | Compute Module 3+  |                        |
# |              | Zero 2 W           |                        |
# |--------------+--------------------+------------------------|
# | 32-bit       | 4                  | KERNEL=kernel7l        |
# |              | 400                | make bcm2711_defconfig |
# |              | Compute Module 4   |                        |
# |              | Compute Module 4S  |                        |
KERNEL="kernel8"
K_DEFCONFIG="bcm2711_defconfig"

RASPBERRYPI_KERNEL_TAG="stable_20250916"

ETYPE="sources"
K_NOSETEXTRAVERSION="yes"
K_NOUSENAME="yes"
K_PREDEBLOBBED="1"
K_SECURITY_UNSUPPORTED="1"

inherit kernel-2

DESCRIPTION="Raspberry Pi kernel sources"
HOMEPAGE="https://github.com/raspberrypi/linux"
SRC_URI="https://github.com/raspberrypi/linux/archive/refs/tags/${RASPBERRYPI_KERNEL_TAG}.tar.gz"
KEYWORDS="arm arm64"
S="${WORKDIR}/linux-${PVR}"

universal_unpack() {
	debug-print-kernel2-variables

	unpack ${RASPBERRYPI_KERNEL_TAG}.tar.gz

	# We want to rename the unpacked directory to a nice normalised string
	# bug #762766
	mv "${WORKDIR}/linux-${RASPBERRYPI_KERNEL_TAG}" "${WORKDIR}/linux-${PVR}" || die

	# remove all backup files
	find . -iname "*~" -exec rm {} \; 2>/dev/null
}

pkg_preinst() {
	[[ ${ETYPE} == headers ]] && preinst_headers

	mv "${ED}/linux-${PVR}" "${ED}/${PF}" || die
}
