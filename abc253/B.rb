# frozen_string_literal: true

H, W = gets.chomp.split.map(&:to_i)
pieces = []

H.times do |h|
  gets.chomp.chars.each_with_index do |v, w|
    pieces << [h, w] if v == 'o'
  end
end

h1, w1 = pieces[0]
h2, w2 = pieces[1]

puts (h1 - h2).abs + (w1 - w2).abs
