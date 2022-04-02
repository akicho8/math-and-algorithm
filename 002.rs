//-*- compile-command: "rustc --out-dir _bin 2.rs && echo '1 2 3' | _bin/2" -*-

fn main() {
    let mut s = String::new();
    std::io::stdin().read_line(&mut s).unwrap();

    // let s = "1 2 3";

    let total = s
        .split_whitespace()
        .map(|e| e.parse::<isize>().unwrap())
        .sum::<isize>();

    println!("{:?}", total);
}
