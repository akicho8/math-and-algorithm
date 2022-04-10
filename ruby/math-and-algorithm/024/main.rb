# [024] Answer Exam Randomly
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_x
#
# 2択 → 
#


n = gets.to_i
list = n.times.collect { gets.split.collect(&:to_i) }
p list.sum { |count, score| score.fdiv(count) }
__END__
2
2 50
4 100
# >> 50.0
