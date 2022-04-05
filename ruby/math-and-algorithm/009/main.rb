# [009] Brute Force 2
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_i

n, s = gets.split.map(&:to_i)
a = gets.split.take(n).map(&:to_i)

# n, s = 3, 11
# a = [2, 5, 9]

# Rubyのメソッドを使えばすべての組み合わせが取れる
# if a.combination(2).any? { |e| e.sum == s }
#   puts "Yes"
# else
#   puts "No"
# end

# ビット全探索
# 組み合わせの位置をビットが示してくれるのを利用している
(0...(1 << n)).each do |i|      # (0..(2n-1)) なので 0..7 になる
  sum = 0
  n.times do |j|                # 本では1から始めているせいで複雑になっている。0から始めた方がわかりやすい
    j                           # => 0, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 2
    if i.anybits?(1 << j)
      sum += a[j]               # => 2, 5, 2, 7, 9, 2, 11
    end
  end
  sum                           # => 0, 2, 5, 7, 9, 11
  if sum == s
    puts "Yes"
    exit
  end
end
puts "No"
# >> Yes
