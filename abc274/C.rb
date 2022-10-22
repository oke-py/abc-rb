# frozen_string_literal: true

N = gets.to_i
A = gets.chomp.split.map(&:to_i)
x = Array.new((N * 2) + 1, 0)

(1..N).each do |i|
  a = x[A[i - 1] - 1]
  x[(i * 2) - 1] = a + 1
  x[i * 2] = a + 1
end

puts x.join("\n")
