# frozen_string_literal: true

N = gets.to_i
a = []
b = []

distance = 0
N.times do
  ai, bi = gets.chomp.split.map(&:to_i)
  a << ai
  b << bi
  distance += bi - ai
end

distance += ((a.min)..(a.max)).map do |s|
  a.inject(0) { |res, ai| res + (s - ai).abs }
end.min

distance += ((b.min)..(b.max)).map do |s|
  b.inject(0) { |res, bi| res + (s - bi).abs }
end.min

puts distance
