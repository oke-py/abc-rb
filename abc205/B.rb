# frozen_string_literal: true

require 'set'

N = gets.to_i
A = Set.new(gets.chomp.split.map(&:to_i))

if A.size == N
  puts 'Yes'
else
  puts 'No'
end
