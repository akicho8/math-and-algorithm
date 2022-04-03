// fn main() {
//     let mut s = String::new();
//     std::io::stdin().read_line(&mut s).unwrap();
//     let n = s.trim().parse::<isize>().unwrap();
//     println!("{:?}", n + 5);
// }

// 入力 + 5

use proconio::input;
// use proconio::source::once::OnceSource;

fn main() {
    // let source = OnceSource::from("10\n");
    input! {
        // from source,
        n: isize,
    }
    let n = n + 5;
    println!("{}", n);
}
