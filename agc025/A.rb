# frozen_string_literal: true

N = gets.to_i

ans = 100
(1...N).each do |a|
  b = N - a
  sum = a.digits.sum + b.digits.sum
  ans = sum if ans > sum
end

puts ans
