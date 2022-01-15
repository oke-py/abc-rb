a = 0
gets
gets.split.map(&:to_i).each do |h|
  if a >= h
    break
  end
  a = h
end
puts a