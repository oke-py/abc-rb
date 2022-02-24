require 'set'
contests = Set.new(%w[ABC ARC AGC AHC])
s = Set.new
3.times { s.add(gets.chomp) }
puts contests.difference(s).to_a[0]
