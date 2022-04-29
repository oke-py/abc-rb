# frozen_string_literal: true

R, C = gets.chomp.split.map(&:to_i)
a = []
R.times do
  a << gets.chomp.split.map(&:to_i)
end

answer = 0

(1 << R).times do |bits|
  current = a.map.with_index do |u, r|
    bits[r].zero? ? u : u.map { |v| (v + 1) % 2 }
  end

  sum = 0
  C.times do |c|
    csum = current.sum { |r| r[c] }
    csum = R - csum if csum * 2 < R
    sum += csum
  end

  answer = sum if answer < sum
end

puts answer
