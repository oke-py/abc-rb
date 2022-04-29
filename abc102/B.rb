# frozen_string_literal: true

N = gets.to_i
A = gets.chomp.split.map(&:to_i)

min = 10**10
max = -1

N.times do |i|
  min = A[i] if A[i] < min
  max = A[i] if A[i] > max
end

puts max - min
