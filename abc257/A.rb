# frozen_string_literal: true

N, X = gets.chomp.split.map(&:to_i)
a = []
('A'..'Z').each do |c|
  N.times do
    a << c
  end
end

puts a[X - 1]
