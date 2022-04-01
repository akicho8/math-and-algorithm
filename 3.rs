#[allow(unused_variables)]

fn main() {
    // let n = 3;
    // let list = vec![1, 2, 3];

    let mut s = String::new();
    std::io::stdin().read_line(&mut s).unwrap();
    let n = s.trim().parse::<usize>().unwrap();

    // 1行ずつ
    // let list = (0..n).map(|_| {
    //     let mut s = String::new();
    //     std::io::stdin().read_line(&mut s).unwrap();
    //     s.trim().parse::<usize>().unwrap()
    // }).collect::<Vec<_>>();

    // 1行に複数
    let mut s = String::new();
    std::io::stdin().read_line(&mut s).unwrap();
    let list = s
        .split_whitespace()
        .take(n)
        .map(|e| e.parse::<isize>().unwrap())
        .collect::<Vec<_>>();

    let total = list.iter().sum::<isize>();
    println!("{:?}", total);
}
