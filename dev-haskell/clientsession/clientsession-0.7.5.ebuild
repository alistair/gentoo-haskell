# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Securely store session data in a client-side cookie."
HOMEPAGE="http://github.com/yesodweb/clientsession/tree/master"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-haskell/base64-bytestring-0.1.1.1[profile?]
		<dev-haskell/base64-bytestring-0.2[profile?]
		=dev-haskell/cereal-0.3*[profile?]
		>=dev-haskell/cprng-aes-0.2[profile?]
		>=dev-haskell/crypto-api-0.8[profile?]
		<dev-haskell/crypto-api-0.11[profile?]
		>=dev-haskell/cryptocipher-0.2.5[profile?]
		>=dev-haskell/entropy-0.2.1[profile?]
		=dev-haskell/skein-0.1*[profile?]
		>=dev-haskell/tagged-0.1[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/hspec-0.6[profile?]
			<dev-haskell/hspec-1.2[profile?]
			dev-haskell/hunit[profile?]
			dev-haskell/quickcheck:2[profile?]
		)
		"

src_prepare() {
	sed -e 's@hspec               >= 0.6        && < 0.10@hspec               >= 0.6        \&\& < 1.2@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}

src_configure() {
	cabal_src_configure $(use test && use_enable test tests) #395351
}
