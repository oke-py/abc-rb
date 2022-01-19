s = gets.chomp
t = gets.chomp
if s == t
  puts 'Yes'
  return
end

res = 1.upto(s.length - 1).any? do |i|
  tmp = String.new(s)
  tmp[i - 1] = s[i]
  tmp[i] = s[i - 1]
  tmp == t
end
puts res ? 'Yes' : 'No'
