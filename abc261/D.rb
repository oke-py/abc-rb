# frozen_string_literal: true

N, M = gets.chomp.split.map(&:to_i)
X = [0] + gets.chomp.split.map(&:to_i)
Y = Array.new(N + 1, 0)

M.times do
  c, y = gets.chomp.split.map(&:to_i)
  Y[c] = y
end

dp = Array.new(N + 1) { Array.new(N + 1, 0) }

dp[1][0] = 0
dp[1][1] = X[1] + Y[1]

(2..N).each do |i|
  dp[i][0] = dp[i - 1].max
  (1..i).each do |j|
    dp[i][j] = dp[i - 1][j - 1] + X[i] + Y[j]
  end
end

puts dp[N].max
