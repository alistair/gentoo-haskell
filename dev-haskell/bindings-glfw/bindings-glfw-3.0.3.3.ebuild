# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="bindings-GLFW"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Low-level bindings to GLFW OpenGL library"
HOMEPAGE="http://hackage.haskell.org/package/bindings-GLFW"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
#hackport: flags: -macosxusechdir,-macosxusemenubar
IUSE=""

RESTRICT=test # needs video driver access

RDEPEND=">=dev-haskell/bindings-dsl-1.0:=[profile?] <dev-haskell/bindings-dsl-1.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	virtual/libc
	virtual/opengl
	x11-libs/libX11
	x11-libs/libXi
	x11-libs/libXrandr
	x11-libs/libXxf86vm
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.3
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4 )
"

S="${WORKDIR}/${MY_P}"
