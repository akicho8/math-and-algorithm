#!/bin/sh

# cargo install cargo-compete
# cargo compete init atcoder
# cargo compete login atcoder
# rustup install 1.42.0
# cargo compete new abc196
# (cd abc196 && cargo compete open)
# cargo compete new math-and-algorithm
cd math-and-algorithm
cargo compete test 001
cargo compete submit 001
# cargo compete login
