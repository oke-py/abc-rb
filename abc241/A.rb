# frozen_string_literal: true

a = gets.chomp.split.map(&:to_i)
k = 0
ans = 0
3.times do
  ans = a[k]
  k = ans
end
puts ans
