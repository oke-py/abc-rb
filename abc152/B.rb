a, b = gets.chomp.split.map(&:to_i)
ab = a.to_s * b
ba = b.to_s * a
puts ab < ba ? ab : ba
