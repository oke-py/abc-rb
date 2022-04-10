# frozen_string_literal: true

N, M = gets.chomp.split.map(&:to_i)
a = []
N.times do
  a << gets.chomp.split.map(&:to_i)
end

ans = 0
(0...M).each do |i|
  ((i + 1)...M).each do |j|
    score = 0
    (0...N).each do |k|
      score += [a[k][i], a[k][j]].max
    end
    ans = score if ans < score
  end
end

puts ans
