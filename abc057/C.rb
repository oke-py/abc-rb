n = gets.to_i
ans = n.to_s.size
1.upto(Integer.sqrt(n)).each do |a|
  next if n % a != 0

  b = n / a
  ans = b.to_s.size if b.to_s.size < a
end
puts ans
