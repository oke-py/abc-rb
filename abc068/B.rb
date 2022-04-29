# frozen_string_literal: true

N = gets.to_i

if N == 1
  puts 1
  exit
end

a = [*1..N]
8.times do
  break if a.count(&:even?) == 1

  a.map! do |i|
    i.odd? ? -1 : i / 2
  end
end

puts a.index(&:even?) + 1
