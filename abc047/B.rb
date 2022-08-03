# frozen_string_literal: true

W, H, N = gets.chomp.split.map(&:to_i)
white = Array.new(W) { Array.new(H, 1) }

N.times do
  x, y, a = gets.chomp.split.map(&:to_i)

  W.times do |i|
    H.times do |j|
      white[i][j] = 0 if (a == 1 && i < x) || (a == 2 && i >= x) || (a == 3 && j < y) || (a == 4 && j >= y)
    end
  end
end

p white.map(&:sum).sum
