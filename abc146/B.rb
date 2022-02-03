n = gets.to_i
s = gets.chomp.chars.map do |c|
  if c.ord + n <= 'Z'.ord
    (c.ord + n).chr
  else
    (c.ord + n - 26).chr
  end
end
puts s.join
