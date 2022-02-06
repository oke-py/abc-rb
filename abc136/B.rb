n = gets.to_i
ans = 0
1.upto(n) { |i| ans += 1 if i.to_s.length.odd? }
puts ans
