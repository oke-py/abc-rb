# frozen_string_literal: true

S = gets.chomp.split
T = gets.chomp.split
pairs = 0
3.times do |i|
  pairs += 1 if S[i] == T[i]
end
puts pairs == 1 ? 'No' : 'Yes'
