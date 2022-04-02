// "3" "1 2 3" → (1 + 2 + 3) % 100

use proconio::input;

fn main() {
    input! {
        n: isize,
        a: [isize; n],
    }
    println!("{:?}", a.iter().sum::<isize>() % 100);
}
