n = gets.to_i
ans = 0
1.step(n, 2) do |i|
  d = 0
  1.step(n, 2) do |j|
    d += 1 if i % j == 0
  end
  ans += 1 if d == 8
end
puts ans
