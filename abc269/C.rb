# frozen_string_literal: true

N = gets.to_i
N2 = N.to_s(2).chars.map(&:to_i)

on = []
L = N2.size
N2.each_with_index do |v, i|
  on << (L - i - 1) if v == 1
end

if on.empty?
  puts 0
  exit
end

x = []
[0, 1].repeated_permutation(on.size).each do |xon|
  v = 0
  on.size.times do |i|
    v += (2**on[i]) * xon[i]
  end
  x << v
end

puts x.join("\n")
