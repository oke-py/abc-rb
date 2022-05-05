# frozen_string_literal: true

N = gets.to_i
P = gets.chomp.split.map(&:to_i)
Q = gets.chomp.split.map(&:to_i)
perm = [*1..N].permutation.to_a
a = perm.index(P)
b = perm.index(Q)
puts (a - b).abs
