# frozen_string_literal: true

A, B, K = gets.chomp.split.map(&:to_i)
ans = 0
current = A

loop do
  if B <= current
    puts ans
    exit
  end

  ans += 1
  current *= K
end
