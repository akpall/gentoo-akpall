# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

# Need to add use flags for defconfig

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

KERNEL_IUSE_GENERIC_UKI=1
KERNEL_IUSE_MODULES_SIGN=1

inherit kernel-build toolchain-funcs

RASPBERRYPI_KERNEL_TAG="stable_20250916"

# https://koji.fedoraproject.org/koji/packageinfo?packageID=8
# forked to https://github.com/projg2/fedora-kernel-config-for-gentoo
CONFIG_VER=6.12.41-gentoo
GENTOO_CONFIG_VER=g18

DESCRIPTION="Raspberry Pi kernel sources"
HOMEPAGE="https://github.com/raspberrypi/linux"
SRC_URI="
	https://github.com/raspberrypi/linux/archive/refs/tags/${RASPBERRYPI_KERNEL_TAG}.tar.gz
	https://github.com/projg2/gentoo-kernel-config/archive/${GENTOO_CONFIG_VER}.tar.gz
		-> gentoo-kernel-config-${GENTOO_CONFIG_VER}.tar.gz
"
S="${WORKDIR}/linux-${RASPBERRYPI_KERNEL_TAG}"
KEYWORDS="arm64"
IUSE="debug hardened"

BDEPEND="
	debug? ( dev-util/pahole )
"

pkg_setup() {
	ewarn ""
	ewarn "${PN} is *not* supported by the Gentoo Kernel Project in any way."
	ewarn "If you need support, please contact the raspberrypi developers directly."
	ewarn "Do *not* open bugs in Gentoo's bugzilla unless you have issues with"
	ewarn "the ebuilds. Thank you."
	ewarn ""
}

src_prepare() {
	default

	KERNEL=kernel_2712 emake bcm2712_defconfig

	mv .config .. || die

	emake mrproper

	mv ../.config . || die

	local myversion="-raspberrypi-dist"
	use hardened && myversion+="-hardened"
	echo "CONFIG_LOCALVERSION=\"${myversion}\"" > "${T}"/version.config || die
	local dist_conf_path="${WORKDIR}/gentoo-kernel-config-${GENTOO_CONFIG_VER}"

	local merge_configs=(
		"${T}"/version.config
		"${dist_conf_path}"/base.config
		"${dist_conf_path}"/6.12+.config
	)
	use debug || merge_configs+=(
		"${dist_conf_path}"/no-debug.config
	)
	if use hardened; then
		merge_configs+=( "${dist_conf_path}"/hardened-base.config )

		tc-is-gcc && merge_configs+=( "${dist_conf_path}"/hardened-gcc-plugins.config )

		if [[ -f "${dist_conf_path}/hardened-${ARCH}.config" ]]; then
			merge_configs+=( "${dist_conf_path}/hardened-${ARCH}.config" )
		fi
	fi

	kernel-build_merge_configs "${merge_configs[@]}"
}
