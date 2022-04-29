# frozen_string_literal: true

N = gets.to_i
T, A = gets.chomp.split.map(&:to_i)
H = gets.chomp.split.map(&:to_i)

dt = H.map { |x| (T - (x * 0.006) - A).abs }

puts dt.index(dt.min) + 1
