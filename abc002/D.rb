# frozen_string_literal: true

require 'set'

N, M = gets.chomp.split.map(&:to_i)

if M.zero?
  puts 1
  exit
end

xy = Set.new
M.times do
  xy.add(gets.chomp.split.map(&:to_i))
end

ans = 1

(1 << N).times do |bits|
  members = []
  n = 0

  N.times do |i|
    members << (i + 1) if bits[i] != 0
  end

  if members.size == 1
    n = 1
  elsif members.size == 2
    n = 2
  elsif members.size > 2
    current = Set.new(members.combination(2))
    n = current.subset?(xy) ? current.map(&:flatten).flatten.uniq.size : 2
  end

  ans = n if ans < n
end

puts ans
