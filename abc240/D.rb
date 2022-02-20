N = gets.to_i
a = gets.chomp.split.map(&:to_i)
u = []
s = []
ans = 0
prev = 1
a.each do |v|
  ans += 1
  if v == prev
    s[-1] += 1
    if v == s[-1]
      u.pop
      prev = u[-1]
      s.pop
      ans -= v
    end
  else
    u << v
    s << 1
    prev = v
  end
  puts ans
end
