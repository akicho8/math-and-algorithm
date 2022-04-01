$stdin = DATA
n = gets.to_i
# puts n.times.collect { gets.to_i }.sum
puts gets.split.collect(&:to_i).sum
__END__
3
10 20 30
# >> 60
