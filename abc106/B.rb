# frozen_string_literal: true

N = gets.to_i
ans = 0
1.step(by: 2, to: N) do |i|
  factors = 0
  1.step(by: 2, to: i) do |j|
    factors += 1 if (i % j).zero?
  end
  ans += 1 if factors == 8
end
puts ans
