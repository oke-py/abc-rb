# frozen_string_literal: true

N, K = gets.chomp.split.map(&:to_i)

ans = 0
loop do
  break if N < K**ans

  ans += 1
end

puts ans
