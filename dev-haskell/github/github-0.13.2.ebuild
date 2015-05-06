# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Access to the Github API, v3"
HOMEPAGE="https://github.com/jwiegley/github"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.6.1.0:=[profile?]
	>=dev-haskell/attoparsec-0.10.3.0:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1.6:=[profile?]
	>=dev-haskell/byteable-0.1.0:=[profile?]
	>=dev-haskell/case-insensitive-0.4.0.4:=[profile?]
	dev-haskell/conduit:=[profile?]
	>=dev-haskell/cryptohash-0.11:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/failure:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/http:=[profile?]
	>=dev-haskell/http-conduit-1.8:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hspec )
"