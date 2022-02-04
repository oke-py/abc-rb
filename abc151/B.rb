n, k, m = gets.chomp.split.map(&:to_i)
current = gets.chomp.split.map(&:to_i).sum
required = [n * m - current, 0].max
puts required.between?(0, k) ? required : -1
