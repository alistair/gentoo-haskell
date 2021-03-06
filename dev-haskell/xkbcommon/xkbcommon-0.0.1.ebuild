# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell bindings for libxkbcommon"
HOMEPAGE="http://hackage.haskell.org/package/xkbcommon"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # needs X

RDEPEND="dev-haskell/cpphs:=[profile?]
	dev-haskell/data-flags:=[profile?]
	dev-haskell/storable-record:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	x11-libs/libxkbcommon
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"
