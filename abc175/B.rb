# frozen_string_literal: true

N = gets.to_i
L = gets.chomp.split.map(&:to_i)

ans = 0
L.combination(3).each do |c|
  next unless c.uniq.size == 3

  c.sort!
  ans += 1 if c[0] + c[1] > c[2]
end

puts ans
