# frozen_string_literal: true

N, K = gets.chomp.split.map(&:to_i)
v = gets.chomp.split.map(&:to_i).tally.values.sort
puts v.size > K ? v[0, v.size - K].sum : 0
