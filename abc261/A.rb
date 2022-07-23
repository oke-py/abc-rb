# frozen_string_literal: true

L1, R1, L2, R2 = gets.chomp.split.map(&:to_i)

L = (L1..R1).to_a.freeze
R = (L2..R2).to_a.freeze

a = L.intersection(R)
if a.count.zero?
  puts 0
else
  puts a.count - 1
end
