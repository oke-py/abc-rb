a, b = gets.split.map(&:to_i)
db = b.digits
puts a.digits.find.with_index { |n, i| n + db[i] > 9 } ? 'Hard' : 'Easy'
