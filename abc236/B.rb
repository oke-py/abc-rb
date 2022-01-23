n = gets.to_i
a = gets.split.map(&:to_i)
b = Array.new(n, 0)
a.each { |v| b[v - 1] += 1 }
puts b.index(3) + 1
