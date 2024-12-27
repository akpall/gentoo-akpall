# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit bash-completion-r1

DESCRIPTION="Gentoo-specific bash command-line completions (emerge, ebuild, equery, etc)"
HOMEPAGE="https://gitweb.gentoo.org/proj/gentoo-bashcomp.git/"

LICENSE="GPL-2"
SLOT="0"

if (( ${PV} == 99999999 )); then
	EGIT_REPO_URI="https://github.com/akpall/gentoo-bashcomp.git"
	inherit git-r3
else
	SRC_URI="https://gitweb.gentoo.org/proj/${PN}.git/snapshot/${P}.tar.bz2"
	KEYWORDS="~amd64"
fi

src_install() {
	emake DESTDIR="${D}" install \
		  completionsdir="$(get_bashcompdir)" \
		  helpersdir="$(get_bashhelpersdir)" \
		  compatdir="${EPREFIX}/etc/bash_completion.d"
}
