# frozen_string_literal: true

A, B = gets.chomp.split.map(&:to_i)

ans = 0
(A..B).each do |n|
  d = n.digits
  ans += 1 if d[0] == d[4] && d[1] == d[3]
end

puts ans
