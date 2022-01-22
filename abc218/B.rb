s = gets.chomp.split.map do |pi|
  ('a'.ord + pi.to_i - 1).chr
end
puts s.join
