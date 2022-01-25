s = []
3.times { s << gets.chomp }
puts gets.chomp.chars.map { |i| s[i.to_i - 1] }.join
