// N 以下の正の整数の中で、X の倍数または Y の倍数であるものの個数はいくつありますか？

use whiteread::parse_line;
use itertools::Itertools;

fn main() {
    let (n, x, y): (usize, usize, usize) = parse_line().unwrap();
    println!("{:?}", n);
    println!("{:?}", x);
    println!("{:?}", y);
}
