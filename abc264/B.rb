# frozen_string_literal: true

R, C = gets.chomp.split.map(&:to_i)

if R == 1 || R == 15
  puts 'black'
  exit
end

if (R == 2 || R == 14) && [1, 15].include?(C)
  puts 'black'
  exit
end

if (R == 3 || R == 13) && ![2, 14].include?(C)
  puts 'black'
  exit
end

if (R == 4 || R == 12) && [1, 3, 13, 15].include?(C)
  puts 'black'
  exit
end

if (R == 5 || R == 11) && ![2, 4, 12, 14].include?(C)
  puts 'black'
  exit
end

if (R == 6 || R == 10) && [1, 3, 5, 11, 13, 15].include?(C)
  puts 'black'
  exit
end

if (R == 7 || R == 9) && ![2, 4, 6, 10, 12, 14].include?(C)
  puts 'black'
  exit
end

if R == 8 && [1, 3, 5, 7, 9, 11, 13, 15].include?(C)
  puts 'black'
  exit
end

puts 'white'
