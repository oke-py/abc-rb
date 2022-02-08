n = gets.to_i
ans = n.to_s.size
1.upto(Integer.sqrt(n)).each do |a|
  if n % a != 0
    next
  end
  b = n / a
  if b.to_s.size < a
    ans = b.to_s.size
  end
end
puts ans
