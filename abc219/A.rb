x = gets.to_i
puts case x
     when 0...40
       40 - x
     when 40...70
       70 - x
     when 70...90
       90 - x
     else
       'expert'
     end
