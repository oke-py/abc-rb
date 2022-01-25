n = gets.to_i
a = gets.chomp.split.map(&:to_i)
puts a.all? { |v| v.odd? || v.even? && (v % 3 == 0 || v % 5 == 0) } ? 'APPROVED' : 'DENIED'
