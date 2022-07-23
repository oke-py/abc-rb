# frozen_string_literal: true

N = gets.to_i
a = []

N.times do
  a << gets.chomp.chars
end

correct = true

N.times do |i|
  i.times do |j|
    unless (a[i][j] == 'W' && a[j][i] == 'L') || (a[i][j] == 'L' && a[j][i] == 'W') || (a[i][j] == 'D' && a[j][i] == 'D')
      correct = false
    end
  end
end

puts correct ? 'correct' : 'incorrect'
