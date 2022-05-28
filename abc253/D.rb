# frozen_string_literal: true

def f(n)
  n * (n + 1) / 2
end

N, A, B = gets.chomp.split.map(&:to_i)

a = N / A
b = N / B
L = A.lcm(B)
l = N / L

puts f(N) - (A * f(a)) - (B * f(b)) + (L * f(l))
