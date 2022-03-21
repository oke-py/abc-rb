# frozen_string_literal: true

_ = gets.to_i
T = gets.chomp.chars
x = 0
y = 0
direction = 0
T.each do |t|
  case t
  when 'S'
    case direction
    when 0
      x += 1
    when 1
      y -= 1
    when 2
      x -= 1
    when 3
      y += 1
    end
  when 'R'
    direction = (direction + 1) % 4
  end
end
puts "#{x} #{y}"
