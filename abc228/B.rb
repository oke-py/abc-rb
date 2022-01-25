require 'set'
n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
friends = Set.new([x])
loop do
  x = a[x - 1]
  if friends.include?(x)
    break
  end
  friends.add(x)
end
puts friends.count
