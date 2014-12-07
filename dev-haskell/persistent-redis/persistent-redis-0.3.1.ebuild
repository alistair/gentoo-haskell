# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Backend for persistent library using Redis"
HOMEPAGE="http://hackage.haskell.org/package/persistent-redis"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.8:=[profile?]
	>=dev-haskell/attoparsec-0.12.0.0:=[profile?]
	>=dev-haskell/binary-0.7:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/hedis-0.6.0:=[profile?] <dev-haskell/hedis-0.7.0:=[profile?]
	>=dev-haskell/monad-control-0.3.2.0:=[profile?] <dev-haskell/monad-control-0.4:=[profile?]
	>=dev-haskell/mtl-2.2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/path-pieces-0.1:=[profile?]
	>=dev-haskell/persistent-2.1:=[profile?] <dev-haskell/persistent-2.2:=[profile?]
	>=dev-haskell/scientific-0.3.1:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-1.2.0.0:=[profile?]
	>=dev-haskell/transformers-0.4.0.0:=[profile?] <dev-haskell/transformers-0.5.0.0:=[profile?]
	>=dev-haskell/utf8-string-0.3.7:=[profile?] <dev-haskell/utf8-string-0.4.0:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/persistent-template-2.1 <dev-haskell/persistent-template-2.2
		>=dev-haskell/transformers-0.4.0.0 <dev-haskell/transformers-0.5 )
"
