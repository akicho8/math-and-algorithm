#!/bin/sh
# https://crates.io/crates/cargo-atcoder

# cargo install cargo-atcoder
# cargo atcoder login

mkdir -p .cargo
echo '[build]\ntarget-dir = "target"' > .cargo/config.toml
cat .cargo/config.toml

# https://atcoder.jp/contests/math-and-algorithm

cargo atcoder new math-and-algorithm
# cargo atcoder new <contest-name> -b {a..f}
# cargo atcoder submit a
# cargo atcoder submit a --bin
#
# rustup target add x86_64-unknown-linux-musl
#
# cargo atcoder status
# cargo atcoder test
# cargo atcoder test <problem-id>
# cargo atcoder test <problem-id> [case-num]...
# cargo atcoder test <problem-id> --custom
# cargo atcoder gen-binary <problem-id>
# cargo atcoder result [FLAGS] <submission-id>
#
# ~/Library/Preferences/cargo-atcoder.toml
#
# cargo install cross
# brew install binutils
#
# [atcoder]
# strip_path = "/usr/local/opt/binutils/bin/strip"
