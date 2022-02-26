# frozen_string_literal: true

N, M = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
b.each do |v|
  i = a.index(v)
  if i.nil?
    puts 'No'
    exit
  end
  a.delete_at(i)
end
puts 'Yes'
