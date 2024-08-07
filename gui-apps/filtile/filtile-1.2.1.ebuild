# Ebuild written by BurnyLlama.
# Provided as is; feel free to modify or adapt.

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	autocfg-1.1.0
	bitflags-2.4.2
	cfg-if-1.0.0
	equivalent-1.0.1
	hashbrown-0.14.3
	indexmap-2.1.0
	libc-0.2.152
	log-0.4.20
	memchr-2.7.1
	memoffset-0.9.0
	nix-0.27.1
	proc-macro-crate-3.1.0
	proc-macro2-1.0.78
	quick-xml-0.31.0
	quote-1.0.35
	river-layout-toolkit-0.1.6
	syn-2.0.48
	thiserror-1.0.56
	thiserror-impl-1.0.56
	toml_datetime-0.6.5
	toml_edit-0.21.0
	unicode-ident-1.0.12
	wayrs-client-1.0.2
	wayrs-proto-parser-1.0.1
	wayrs-scanner-0.13.0
	winnow-0.5.34
"

inherit cargo

DESCRIPTION="A layout manager for the River window manager."
HOMEPAGE="https://github.com/pkulak/filtile"
SRC_URI="
	https://github.com/pkulak/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"

LICENSE="Apache-2.0 MIT Unicode-DFS-2016 Unlicense"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	>=virtual/rust-1.73.0
"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"
