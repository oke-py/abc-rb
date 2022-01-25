s = gets.chomp
min = String.new(s)
max = String.new(s)

s.size.times do
  s = s[1, s.size - 1] + s[0]
  if s < min
    min = s
  end
  if max < s
    max = s
  end
end

puts min
puts max
