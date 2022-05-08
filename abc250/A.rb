# frozen_string_literal: true

H, W = gets.chomp.split.map(&:to_i)
R, C = gets.chomp.split.map(&:to_i)
ans = 0

(1..H).each do |i|
  (1..W).each do |j|
    ans += 1 if (i - R).abs + (j - C).abs == 1
  end
end

puts ans
