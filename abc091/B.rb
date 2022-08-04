# frozen_string_literal: true

points = {}

N = gets.to_i
N.times do
  s = gets.chomp.to_sym
  if points.key?(s)
    points[s] += 1
  else
    points[s] = 1
  end
end

M = gets.to_i
M.times do
  t = gets.chomp.to_sym
  if points.key?(t)
    points[t] -= 1
  else
    points[t] = -1
  end
end

puts [points.values.max, 0].max
