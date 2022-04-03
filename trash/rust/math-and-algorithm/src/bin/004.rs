// 1 * 2 * 3

use whiteread::parse_line;
use itertools::Itertools;

fn main() {
    let a: Vec<isize> = parse_line().unwrap();
    let total = a.iter().product1::<isize>().unwrap();
    println!("{:?}", total);
}
