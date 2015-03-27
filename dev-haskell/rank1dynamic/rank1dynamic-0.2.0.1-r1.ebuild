# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Like Data.Dynamic/Data.Typeable but with support for rank-1 polymorphic types"
HOMEPAGE="http://haskell-distributed.github.com"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.5:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.3
		>=dev-haskell/test-framework-0.6 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.0 <dev-haskell/test-framework-hunit-0.4 )
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc7.10.patch
}