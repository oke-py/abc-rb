def f(n)
  n - 10**(n.to_s.length - 1) + 1
end
n = gets.to_i
sum = 0
d = n.to_s.length
d.times do |i|
  arg = i + 1 == d ? n : 10**(i + 1) - 1
  m = f(arg)
  sum += m * (m + 1) / 2
end
puts sum % 998_244_353
