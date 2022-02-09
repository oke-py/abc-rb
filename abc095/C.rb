a, b, c, x ,y = gets.chomp.split.map(&:to_i)
ans = 10 ** 10
0.upto([x, y].max) do |k|
  i = [x - k, 0].max
  j = [y - k, 0].max
  price = a * i + b * j + c * k * 2
  if price < ans
    ans = price
  end
end
puts ans
