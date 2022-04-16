# frozen_string_literal: true

def sec(n, a)
  e = a[n / 2]
  a.inject(0) { |res, ai| res + (e - ai).abs }
end

N = gets.to_i
a = []
b = []

ans = 0
N.times do
  ai, bi = gets.chomp.split.map(&:to_i)
  a << ai
  b << bi
  ans += bi - ai
end

a.sort!
b.sort!
ans += sec(N, a) + sec(N, b)

puts ans
