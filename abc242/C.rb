# frozen_string_literal: true

N = gets.to_i
a = [0, 2, 3, 3, 3, 3, 3, 3, 3, 2, 0]
(N - 2).times do
  tmp = Array.new(11, 0)
  9.times do |i|
    tmp[i + 1] = (a[i] + a[i + 1] + a[i + 2]) % 998_244_353
  end
  a = tmp
end
puts a.sum % 998_244_353
