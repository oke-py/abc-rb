# frozen_string_literal: true

H, W = gets.chomp.split.map(&:to_i)
pair = []
H.times do |h|
  s = gets.chomp.chars
  s.each_with_index do |v, w|
    pair << [h, w] if v == 'o'
  end
end

puts (pair[0][0] - pair[1][0]).abs + (pair[0][1] - pair[1][1]).abs
