h, w = gets.chomp.split.map(&:to_i)
b = Array.new(w) {[]}
h.times do |i|
  gets.chomp.split.each_with_index do |v, j|
    b[j][i] = v
  end
end
b.each do |bi|
  puts bi.join(' ')
end
