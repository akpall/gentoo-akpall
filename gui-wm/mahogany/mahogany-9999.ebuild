# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

inherit git-r3

DESCRIPTION="A stumpwm like Wayland compositor"
HOMEPAGE="https://github.com/stumpwm/mahogany"

EGIT_REPO_URI="https://github.com/stumpwm/mahogany.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-lisp/alexandria
	dev-lisp/asdf
	dev-lisp/atomics
	dev-lisp/cffi
	dev-lisp/cl-colors2
	dev-lisp/closer-mop
	dev-lisp/iterate
	dev-lisp/terminfo
	x11-libs/cairo
	x11-libs/pango
"
DEPEND="${RDEPEND}"
