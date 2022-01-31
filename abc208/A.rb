a, b = gets.chomp.split.map(&:to_i)
puts b.between?(a, a * 6) ? 'Yes' : 'No'
