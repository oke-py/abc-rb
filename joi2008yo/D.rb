# frozen_string_literal: true

require 'set'

m = gets.to_i
ms = Set.new
m.times do |_i|
  ms.add(gets.chomp.split.map(&:to_i))
end

base = ms.first

n = gets.to_i
ns = Set.new
n.times do
  ns.add(gets.chomp.split.map(&:to_i))
end

ns.each do |v|
  x = v[0] - base[0]
  y = v[1] - base[1]

  tmp = ms.map { |w| [w[0] + x, w[1] + y] }.to_set
  if tmp.subset?(ns)
    puts "#{x} #{y}"
    exit
  end
end
