# frozen_string_literal: true

N, D = gets.chomp.split.map(&:to_i)

x = []
N.times do
  x << gets.chomp.split.map(&:to_i)
end

ans = 0
(0...N).each do |i|
  ((i + 1)...N).each do |j|
    d2 = 0
    D.times do |k|
      d2 += (x[i][k] - x[j][k])**2
    end

    ans += 1 if (Math.sqrt(d2) % 1).zero?
  end
end

puts ans
