# frozen_string_literal: true

x = []
y = []
3.times do
  point = gets.chomp.split.map(&:to_i)
  x << point[0]
  y << point[1]
end
puts "#{x.tally.key(1)} #{y.tally.key(1)}"
