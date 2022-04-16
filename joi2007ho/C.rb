# frozen_string_literal: true

require 'set'

n = gets.to_i
A = 10**4
area = 0
set = Set.new
xy = []

n.times do
  x, y = gets.chomp.split.map(&:to_i)
  xy << [x, y]
  set.add(x + (A * y))
end

(0..(n - 2)).each do |i|
  xi, yi = xy[i]
  ((i + 1)..(n - 1)).each do |j|
    xj, yj = xy[j]

    dx = xi - xj
    dy = yi - yj

    x1 = xi + dy
    y1 = yi - dx
    x2 = xj + dy
    y2 = yj - dx

    if set.include?(x1 + (A * y1)) && set.include?(x2 + (A * y2))
      current = (dx**2) + (dy**2)
      area = current if area < current
    end
  end
end

puts area
