n, a, x, y = gets.chomp.split.map(&:to_i)
puts x * [a, n].min + y * [(n - a), 0].max
