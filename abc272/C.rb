# frozen_string_literal: true

N = gets.to_i
A = gets.chomp.split.map(&:to_i)

odds = [-1, -1]
evens = [-1, -1]

A.each do |a|
  if a.odd?
    odds[0] = a if a > odds[0]
    odds.sort!
  end
  if a.even?
    evens[0] = a if a > evens[0]
    evens.sort!
  end
end

sum1 = odds[0] == -1 ? -1 : odds.sum
sum2 = evens[0] == -1 ? -1 : evens.sum
puts [sum1, sum2].max
