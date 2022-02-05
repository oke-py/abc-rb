require 'set'
n = gets.to_i
a = gets.chomp.split.map(&:to_i)
s = Set.new
c = 0
a.each do |v|
  c = (c + v) % 360
  s.add(c)
end
s.add(360)
ans = 0
prev = 0
s.sort.each do |v|
  if v - prev > ans
    ans = v - prev
  end
  prev = v
end
puts ans
