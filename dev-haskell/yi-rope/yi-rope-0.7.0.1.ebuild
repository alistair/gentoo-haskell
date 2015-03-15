# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A rope data structure used by Yi"
HOMEPAGE="http://hackage.haskell.org/package/yi-rope"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary:=[profile?]
	>=dev-haskell/charsetdetect-ae-1.0.1:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/fingertree:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/text-icu:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hspec
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		dev-haskell/quickcheck-instances )
"