# frozen_string_literal: true

H, W = gets.chomp.split.map(&:to_i)
x = Array.new(W, 0)
H.times do
  c = gets.chomp
  W.times do |w|
    x[w] += 1 if c[w] == '#'
  end
end

puts x.join(' ')
