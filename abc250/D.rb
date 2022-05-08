# frozen_string_literal: true

require 'prime'

N = gets.to_i
primes = []
count = 0

Prime.each(Math.cbrt(N).ceil) do |prime|
  primes << prime
end

primes.each_with_index do |v, i|
  ((i + 1)...(primes.size)).each do |j|
    n = v * ((primes[j])**3)

    break if n > N

    count += 1
  end
end

puts count
