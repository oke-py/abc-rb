# frozen_string_literal: true

N, K = gets.chomp.split.map(&:to_i)
ab = []
ab << gets.chomp.split.map(&:to_i)
ab << gets.chomp.split.map(&:to_i)

prev = [ab[0][0], ab[1][0]]
(N - 1).times do |i|
  prev = [ab[0][i + 1], ab[1][i + 1]].select do |v|
    prev.any? { |pv| (pv - v).abs <= K }
  end
  if prev.empty?
    puts 'No'
    exit
  end
end
puts 'Yes'
