# frozen_string_literal: true

a, b, c, d = 0
10.times do |i|
  s = gets.chomp
  next unless s.include?('#')

  a = i + 1 if a.zero?
  b = i + 1
  c = s.index('#') + 1
  d = c + s.count('#') - 1
end

puts "#{a} #{b}"
puts "#{c} #{d}"
