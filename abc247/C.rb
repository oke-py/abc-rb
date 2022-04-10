# frozen_string_literal: true

N = gets.to_i
s = Array.new(N + 1)
s[1] = '1'

(2..N).each do |i|
  s[i] = "#{s[i - 1]} #{i} #{s[i - 1]}"
end

puts s[N]
