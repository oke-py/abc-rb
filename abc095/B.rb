# frozen_string_literal: true

N, X = gets.chomp.split.map(&:to_i)
m = []
N.times do
  m << gets.to_i
end

puts m.size + ((X - m.sum) / m.min)
