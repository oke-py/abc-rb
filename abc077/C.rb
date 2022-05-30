# frozen_string_literal: true

N = gets.to_i
A = gets.chomp.split.map(&:to_i).sort
B = gets.chomp.split.map(&:to_i)
C = gets.chomp.split.map(&:to_i).sort

ans = B.sum(0) do |b|
  i = A.bsearch_index { |v| v >= b }
  a = i.nil? ? N : i

  j = C.bsearch_index { |v| v > b }
  c = j.nil? ? 0 : N - j

  a * c
end

puts ans
