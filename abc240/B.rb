require 'set'
gets.to_i
a = gets.chomp.split.map(&:to_i)
puts Set.new(a).count
