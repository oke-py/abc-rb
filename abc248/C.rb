# frozen_string_literal: true

N, M, K = gets.chomp.split.map(&:to_i)
div = 998_244_353

dp = Array.new(N + 1) { Array.new((N * M) + 1) { 0 } }

M.times do |m|
  dp[1][m + 1] = 1
end

(2..N).each do |n|
  (n..(n * M)).each do |i|
    (1..M).each do |m|
      if m <= i
        dp[n][i] += dp[n - 1][i - m]
        dp[n][i] %= div
      end
    end
  end
end

ans = 0
(N..K).each do |i|
  ans += dp[N][i]
  ans %= div
end

puts ans
