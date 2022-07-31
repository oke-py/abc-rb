# frozen_string_literal: true

_, K = gets.chomp.split.map(&:to_i)
L = gets.chomp.split.map(&:to_i).sort.reverse

puts L[0...K].sum
