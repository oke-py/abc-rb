# frozen_string_literal: true

N, A, B = gets.chomp.split.map(&:to_i)

a = N / A
b = N / B
l = A.lcm(B)
c = N / l

ab = (A * a * (a + 1) / 2) + (B * b * (b + 1) / 2)
puts (N * (N + 1) / 2) + (l * c * (c + 1) / 2) - ab
