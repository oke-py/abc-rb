# frozen_string_literal: true

N, K, Q = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
L = gets.chomp.split.map(&:to_i)

L.each do |l|
  next if a[l - 1] == N

  a[l - 1] += 1 if l == K || a[l - 1] + 1 != a[l]
end

puts a.join(' ')
