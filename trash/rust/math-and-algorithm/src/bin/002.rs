// fn main() {
//     let mut s = String::new();
//     std::io::stdin().read_line(&mut s).unwrap();
//
//     // let s = "1 2 3";
//
//     let total = s
//         .split_whitespace()
//         .map(|e| e.parse::<isize>().unwrap())
//         .sum::<isize>();
//
//     println!("{:?}", total);
// }

// "1 2 3" の合計
use whiteread::parse_line;

fn main() {
    let a: Vec<isize> = parse_line().unwrap();
    let total: isize = a.iter().sum();
    println!("{:?}", total);
}
