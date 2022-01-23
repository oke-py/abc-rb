n, m = gets.split.map(&:to_i)
s = gets.chomp.split
t = gets.chomp.split
j = 0
s.each do |v|
  if v == t[j]
    puts 'Yes'
    j += 1
  else
    puts 'No'
  end
end
