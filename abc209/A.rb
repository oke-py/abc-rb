a, b = gets.chomp.split.map(&:to_i)
puts a <= b ? b - a + 1 : 0
