n = gets.to_i
s = gets.chomp
count = 0
(n - 2).times do |i|
  count += 1 if s[i, 3] == 'ABC'
end
puts count
