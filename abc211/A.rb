a, b = gets.chomp.split.map(&:to_i)
puts (a - b).to_f / 3 + b
