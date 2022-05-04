n = gets.to_i
list = n.times.collect { gets.split.collect(&:to_i) }
queue = []
list.each do |q, *av|
  if q == 1
    x, c = *av
    queue.push(*([x] * c))
  elsif q == 2
    c = av.first
    puts queue.shift(c).sum
  end
end
__END__
4
1 2 3
2 2
1 3 4
2 3
# >> 4
# >> 8
