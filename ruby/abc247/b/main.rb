# [B] Unique Nicknames
# https://atcoder.jp/contests/abc247/tasks/abc247_b
n = gets.to_i
list = n.times.collect { gets.split }

# stop = false
# list.each.with_index do |(s, t), i|
#   list.each.with_index do |(s2, t2), j|
#     if i != j
#       p [i, j]
#       if s == s2 || s == t2 || t == s2 || t == t2
#         stop = true
#         break
#       end
#     end
#   end
#   if stop
#     break
#   end
# end
# puts stop ? "No" : "Yes"

@mark = {}
f = -> i {
  if i >= list.size
    throw :break, true
  end
  list[i].each do |x|
    if @mark[x].nil? && @mark[x].nil?
      @mark[x] = true
      f.(i + 1)
      @mark.delete(x)
    end
  end
  false
}
r = catch(:break) { f.(0) }
puts r ? "Yes" : "No"                                   # => nil
__END__
3
aaa bbb
xxx aaa
bbb yyy

3
tanaka taro
tanaka jiro
suzuki hanako
# >> Yes
