# frozen_string_literal: true

cards = gets.chomp.split.map(&:to_i)
puts cards.tally.values.sort == [2, 3] ? 'Yes' : 'No'
