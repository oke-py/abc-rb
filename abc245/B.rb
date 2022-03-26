# frozen_string_literal: true

_ = gets.to_i
A = gets.chomp.split.map(&:to_i)
(0..2000).each do |i|
  unless A.include?(i)
    puts i
    break
  end
end
