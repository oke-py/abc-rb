# frozen_string_literal: true

A, B, C, X = gets.chomp.split.map(&:to_i)
ans = 0.0
if X <= A
  ans = 1.0
elsif X <= B
  ans = C.to_f / (B - A)
end
puts ans
