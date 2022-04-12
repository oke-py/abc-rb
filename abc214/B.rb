# frozen_string_literal: true

S, T = gets.chomp.split.map(&:to_i)
pairs = 0
(0..S).each do |a|
  (0..S).each do |b|
    (0..S).each do |c|
      pairs += 1 if a + b + c <= S && a * b * c <= T
    end
  end
end
puts pairs
