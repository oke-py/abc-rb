_, p = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
puts a.count { |v| v < p }
