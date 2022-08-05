# frozen_string_literal: true

c = []
3.times do
  c << gets.chomp.split.map(&:to_i)
end

# a1 = 0
b1 = c[0][0]
b2 = c[0][1]
b3 = c[0][2]
a2 = c[1][0] - b1
a3 = c[2][0] - b1

if (a2 + b2 == c[1][1]) && (a2 + b3 == c[1][2]) && (a3 + b2 == c[2][1]) && (a3 + b3 == c[2][2])
  puts 'Yes'
else
  puts 'No'
end
