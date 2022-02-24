x, y = gets.chomp.split('.').map(&:to_i)
puts case y
     when 0..2
       "#{x}-"
     when 3..6
       x
     when 7..9
       "#{x}+"
     end
