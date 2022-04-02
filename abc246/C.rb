# frozen_string_literal: true

N, k, X = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a.map! do |v|
  coupons = [v / X, k].min
  k -= coupons
  v - (X * coupons)
end.sort!
a.pop(k) if k.positive?
puts a.sum
