a, b, c = gets.chomp.split.map(&:to_i)
n = (a.to_f / c).ceil
if c * n <= b
  puts c * n
else
  puts '-1'
end
