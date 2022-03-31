fn main() {
    let mut s = String::new();
    std::io::stdin().read_line(&mut s).unwrap();
    let n = s.trim().parse::<isize>().unwrap();
    println!("{:?}", n + 5);
}
