# frozen_string_literal: true

N, M = gets.chomp.split.map(&:to_i)

[*1..M].combination(N).each do |c|
  puts "#{c.join(' ')} "
end
