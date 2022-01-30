gets
s = gets.chomp.chars
a = [0]
i = 0
s.each_with_index do |c, j|
  i += 1 if c == 'R'
  a.insert(i, j + 1)
end
puts a.join(' ')
