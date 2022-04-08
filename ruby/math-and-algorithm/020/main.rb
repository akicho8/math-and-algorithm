# [020] Choose Cards 2
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_t
#
# - 全探索

## $stdin = DATA
n = gets.to_i
a = gets.split.take(n).collect(&:to_i)
count = 0
(0...n).each do |i|
  (i.next...n).each do |j|
    (j.next...n).each do |k|
      (k.next...n).each do |l|
        (l.next...n).each do |m|
          if (a[i] + a[j] + a[k] + a[l] + a[m]) == 1000
            count += 1
          end
        end
      end
    end
  end
end
p count
__END__
5
100 150 200 250 300
# >> 1
