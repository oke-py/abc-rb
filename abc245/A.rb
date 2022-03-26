# frozen_string_literal: true

A, B, C, D = gets.chomp.split.map(&:to_i)
if A < C
  puts 'Takahashi'
elsif A == C
  if B <= D
    puts 'Takahashi'
  else
    puts 'Aoki'
  end
else
  puts 'Aoki'
end
