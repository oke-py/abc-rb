# frozen_string_literal: true

require 'set'

chars = Set.new(gets.chomp.chars)
('a'..'z').each do |c|
  unless chars.include?(c)
    puts c
    exit
  end
end

puts 'None'
