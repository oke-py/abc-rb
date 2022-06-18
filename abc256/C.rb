h1, h2, h3, w1, w2, w3 = gets.chomp.split.map(&:to_i)
ans = 0

[*1..30].repeated_permutation(4).each do |a|
  # a = [(0, 0), (0, 1), (1, 0), (1, 1)]
  x02 = h1 - a[0] - a[1]
  x12 = h2 - a[2] - a[3]
  x20 = w1 - a[0] - a[2]
  x21 = w2 - a[1] - a[3]

  ans += 1 if x02 > 0 && x12 > 0 && x20 > 0 && x21 > 0 && h3 - x20 - x21 == w3 - x02 - x12 && h3 - x20 - x21 > 0
end

puts ans
