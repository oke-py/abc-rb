a = 0
gets
gets.split.map(&:to_i).each do |h|
  break if a >= h

  a = h
end
puts a
