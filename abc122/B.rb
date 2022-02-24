s = gets.chomp
longest = 0
current = 0
s.each_char do |c|
  if %w[A C G T].include?(c)
    current += 1
    longest = current if longest < current
  else
    current = 0
  end
end
puts longest
