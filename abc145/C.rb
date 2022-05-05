# frozen_string_literal: true

N = gets.to_i
towns = []
N.times do
  towns << gets.chomp.split.map(&:to_i)
end

prev = []
sum = 0

towns.permutation.each do |t|
  t.each_with_index do |xy, i|
    if i.zero?
      prev = xy
      next
    end

    sum += Math.sqrt(((xy[0] - prev[0])**2) + ((xy[1] - prev[1])**2))
    prev = xy
  end
end

puts sum / [*1..N].inject(:*)
