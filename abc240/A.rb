a, b = gets.chomp.split.map(&:to_i)
puts (a == 1 && b == 10) || b == a + 1 ? 'Yes' : 'No'
