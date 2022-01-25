require 'set'
s = Set.new()
n = gets.to_i
9.times do |i|
  9.times do |j|
    s.add((i+1) * (j+1))
  end
end
puts s.include?(n) ? 'Yes' : 'No'
