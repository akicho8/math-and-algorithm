# $stdin = DATA
# a = gets.to_i
# b, c = gets.split.map(&:to_i)
# s = gets.strip
# puts "#{a+b+c} #{s}"
# __END__
# 1
# 2 3
# 6
# 
n = gets.to_i
p gets.split.take(n).collect(&:to_i).sum
# >> 0
