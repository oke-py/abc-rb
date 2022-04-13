# frozen_string_literal: true

N = gets.to_i
h = {}
a = gets.chomp.split.map(&:to_i)
a.each_with_index do |v, i|
  h[v] = i + 1
end
a.sort!
p h[a[N - 2]]
