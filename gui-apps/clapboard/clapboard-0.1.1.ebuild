# Ebuild written by BurnyLlama.
# Provided as is; feel free to modify or adapt.

EAPI=8

CRATES="
	bitflags@1.3.2
	cfg-if@1.0.0
	dirs@4.0.0
	dirs-sys@0.3.7
	getrandom@0.2.8
	libc@0.2.139
	proc-macro2@1.0.49
	quote@1.0.23
	redox_syscall@0.2.16
	redox_users@0.4.3
	serde@1.0.152
	syn@1.0.107
	thiserror@1.0.38
	thiserror-impl@1.0.38
	toml@0.5.10
	unicode-ident@1.0.6
	wasi@0.11.0+wasi-snapshot-preview1
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	xdg@2.4.1
" # Used cargo-ebuild to generate this list.

inherit cargo

DESCRIPTION=" Wayland clipboard manager that will make you clap 👏" # Developer's description.
HOMEPAGE="https://github.com/bjesus/clapboard"

SRC_URI="
	https://github.com/bjesus/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

# License of project and its dependencies.
LICENSE="Apache-2.0 Apache-2.0-with-LLVM-exceptions MIT Unicode-DFS-2016"

SLOT=0
KEYWORDS="amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND="
	>=virtual/rust-1.7.2
"

# Needed for rust packages AFAIK
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_prepare () {
	default
}

src_install () {
	cargo_src_install
}

