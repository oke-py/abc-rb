# frozen_string_literal: true

N, M = gets.chomp.split.map(&:to_i)
roads = Array.new(N, 0)

M.times do
  a, b = gets.chomp.split.map(&:to_i)
  roads[a - 1] += 1
  roads[b - 1] += 1
end

roads.each do |r|
  puts r
end
