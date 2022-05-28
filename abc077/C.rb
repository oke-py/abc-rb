# frozen_string_literal: true

N = gets.to_i
A = gets.chomp.split.map(&:to_i).sort
B = gets.chomp.split.map(&:to_i).sort
C = gets.chomp.split.map(&:to_i).sort

b1 = B.map do |b|
  i = C.bsearch_index { |c| c > b }
  i.nil? ? 0 : B.size - i
end

b2 = [b1.last]
(N - 1).times do |i|
  b2.unshift b2[0] + b1[N - i - 2]
end

ans = A.map do |a|
  i = B.bsearch_index { |b| b > a }
  i.nil? ? 0 : b2[i]
end.sum

puts ans
