# frozen_string_literal: true

N, K = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

answer = (10**10) * 2

(1 << N).times do |bits|
  next if bits.digits(2).sum != K

  cost = 0
  current = a.dup
  (1...N).each do |i|
    next if bits[i].zero?

    h = current[0...i].max
    if current[i] <= h
      current[i] = h + 1
      cost += current[i] - a[i]
    end
  end

  answer = cost if cost < answer
end

puts answer
