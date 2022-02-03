n = gets.to_i
s, t = gets.chomp.split
r = ''
n.times do |i|
  r = r + s[i] + t[i]
end
puts r
