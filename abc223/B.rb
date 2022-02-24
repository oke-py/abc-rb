s = gets.chomp
min = String.new(s)
max = String.new(s)

s.size.times do
  s = s[1, s.size - 1] + s[0]
  min = s if s < min
  max = s if max < s
end

puts min
puts max
