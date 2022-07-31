# frozen_string_literal: true

_, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort

ans = 0
sum = 0
a.each do |v|
  sum += v
  ans += 1 if sum <= x
end

ans -= 1 if sum < x
puts ans
