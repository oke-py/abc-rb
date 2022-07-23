# frozen_string_literal: true

N = gets.to_i
x = {}

N.times do
  s = gets.chomp

  if x.key?(s.to_sym)
    puts "#{s}(#{x[s.to_sym]})"
    x[s.to_sym] += 1
  else
    puts s
    x[s.to_sym] = 1
  end
end
