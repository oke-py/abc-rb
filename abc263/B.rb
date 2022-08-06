# frozen_string_literal: true

N = gets.to_i
P = gets.chomp.split.map(&:to_i)

ans = 1
pi = P.last

while pi != 1
  pi = P[pi - 2]
  ans += 1
end

puts ans
